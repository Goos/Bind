import Foundation

public protocol Callable {
    associatedtype ReturnType
    func call() -> ReturnType
}

public protocol ThrowingCallable {
    associatedtype ReturnType
    func call() throws -> ReturnType
}

public typealias Callback<T> = (T) -> ()
public protocol AsyncCallable {
    associatedtype ReturnType
    func call(callback: Callback<ReturnType>) -> ()
}

public typealias ErrorCallback = (Error) -> ()
public protocol ThrowingAsyncCallable {
    associatedtype ReturnType
    func call(success: Callback<ReturnType>, error: ErrorCallback) -> ()
}

public func >>= <A: Callable, B, C> (_ callable: A, _ function: @escaping (B) -> C) -> () -> C where A.ReturnType == B {
    return { () -> C in
        let res = callable.call()
        return function(res)
    }
}
// TODO: Add more permutations for this
public func >>= <A: Callable, B, C> (_ first: @escaping (B) -> C, second: @escaping (C) -> A) -> (B) -> A.ReturnType {
    return { (b: B) -> A.ReturnType in
        let res = first(b)
        let callable = second(res)
        return callable.call()
    }
}

public func >>= <A: Callable, B, C> (_ callable: A, _ function: @escaping (B) throws -> C) -> () throws -> C where A.ReturnType == B {
    return { () throws -> C in
        let res = callable.call()
        return try function(res)
    }
}
// TODO: Add more permutations for this
public func >>= <A: Callable, B, C> (_ first: @escaping (B) throws -> C, second: @escaping (C) throws -> A) -> (B) throws -> A.ReturnType {
    return { (b: B) throws -> A.ReturnType in
        let res = try first(b)
        return try second(res).call()
    }
}

public func >>= <A: ThrowingCallable, B, C> (_ callable: A, _ function: @escaping (B) throws -> C) -> () throws -> C where A.ReturnType == B {
    return { () throws -> C in
        let res = try callable.call()
        return try function(res)
    }
}
// TODO: Add more permutations for this
public func >>= <A: ThrowingCallable, B, C> (_ first: @escaping (B) throws -> C, second: @escaping (C) throws -> A) -> (B) throws -> A.ReturnType {
    return { (b: B) throws -> A.ReturnType in
        let res = try first(b)
        return try second(res).call()
    }
}

public func >>= <A: AsyncCallable, B, C> (_ callable: A, _ function: @escaping (B) -> C) -> (Callback<C>) -> () where A.ReturnType == B {
    return { (completion: Callback<C>) -> () in
        callable.call { (res: B) in
            let final = function(res)
            completion(final)
        }
    }
}
// TODO: Add more permutations for this
public func >>= <A: AsyncCallable, B, C> (_ first: @escaping (B) -> C, _ second: @escaping (C) -> A) -> (B, Callback<A.ReturnType>) -> () {
    return { (b: B, c: Callback<A.ReturnType>) -> () in
        let res = first(b)
        return second(res).call(callback: c)
    }
}

public func >>= <A: AsyncCallable, B, C> (_ callable: A, _ function: @escaping (B) throws -> C) -> (Callback<C>, ErrorCallback) -> () where A.ReturnType == B {
    return { (success: Callback<C>, error: ErrorCallback) -> () in
        callable.call { (res: B) in
            do {
                let final = try function(res)
                success(final)
            } catch(let err) {
                error(err)
            }
        }
    }
}

// TODO: Add more permutations for this
public func >>= <A: AsyncCallable, B, C> (_ first: @escaping (B) throws -> C, second: @escaping (C) -> A) -> (B, Callback<A.ReturnType>, ErrorCallback) -> () {
    return { (b: B, s: Callback<A.ReturnType>, e: ErrorCallback) -> () in
        do {
            let res = try first(b)
            second(res).call(callback: s)
        } catch {
            e(error)
        }
    }
}

public func >>= <A: ThrowingAsyncCallable, B, C> (_ callable: A, _ function: @escaping (B) throws -> C) -> (Callback<C>, ErrorCallback) -> () where A.ReturnType == B {
    return { (success: Callback<C>, error: ErrorCallback) -> () in
        callable.call(success: { (res: B) in
            do {
                let final = try function(res)
                success(final)
            } catch(let err) {
                error(err)
            }
        }, error: { (err: Error) in
                error(err)
        })
    }
}

// TODO: Add more permutations for this
public func >>= <A: ThrowingAsyncCallable, B, C> (_ first: @escaping (B) throws -> C, second: @escaping (C) -> A) -> (B, Callback<A.ReturnType>, ErrorCallback) -> () {
    return { (b: B, s: Callback<A.ReturnType>, e: ErrorCallback) -> () in
        do {
            let res = try first(b)
            second(res).call(success: s, error: e)
        } catch {
            e(error)
        }
    }
}

// TODO: Add more permutations for this
public func >>= <A, B, C> (_ first: @escaping (A, Callback<B>, ErrorCallback) -> (), second: @escaping (B) throws -> C) -> (A, Callback<C>, ErrorCallback) -> () {
    return { (a: A, s: Callback<C>, e: ErrorCallback) -> () in
        first(a, { (b: B) in
            do {
                s(try second(b))
            } catch {
                e(error)
            }
        }, e)
    }
}
