import Foundation

public func >>=<A, B, C>(_ first: @escaping (A) -> B, _ second: @escaping (B) -> C) -> (A) -> C {
    return { (a: A) -> C in
        let res = first(a)
        return second(res)
    }
}

public func >>=<A, B, C, D>(_ first: @escaping (A, B) -> C, _ second: @escaping (C) -> D) -> (A, B) -> D {
    return { (a: A, b: B) -> D in
        let res = first(a, b)
        return second(res)
    }
}

public func >>=<A, B, C, D, E>(_ first: @escaping (A, B, C) -> D, _ second: @escaping (D) -> E) -> (A, B, C) -> E {
    return { (a: A, b: B, c: C) -> E in
        let res = first(a, b, c)
        return second(res)
    }
}

public func >>=<A, B, C, D, E, F>(_ first: @escaping (A, B, C, D) -> E, _ second: @escaping (E) -> F) -> (A, B, C, D) -> F {
    return { (a: A, b: B, c: C, d: D) -> F in
        let res = first(a, b, c, d)
        return second(res)
    }
}

public func >>=<A, B, C, D, E, F, G>(_ first: @escaping (A, B, C, D, E) -> F, _ second: @escaping (F) -> G) -> (A, B, C, D, E) -> G {
    return { (a: A, b: B, c: C, d: D, e: E) -> G in
        let res = first(a, b, c, d, e)
        return second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H>(_ first: @escaping (A, B, C, D, E, F) -> G, _ second: @escaping (G) -> H) -> (A, B, C, D, E, F) -> H {
    return { (a: A, b: B, c: C, d: D, e: E, f: F) -> H in
        let res = first(a, b, c, d, e, f)
        return second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I>(_ first: @escaping (A, B, C, D, E, F, G) -> H, _ second: @escaping (H) -> I) -> (A, B, C, D, E, F, G) -> I {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G) -> I in
        let res = first(a, b, c, d, e, f, g)
        return second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J>(_ first: @escaping (A, B, C, D, E, F, G, H) -> I, _ second: @escaping (I) -> J) -> (A, B, C, D, E, F, G, H) -> J {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H) -> J in
        let res = first(a, b, c, d, e, f, g, h)
        return second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K>(_ first: @escaping (A, B, C, D, E, F, G, H, I) -> J, _ second: @escaping (J) -> K) -> (A, B, C, D, E, F, G, H, I) -> K {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I) -> K in
        let res = first(a, b, c, d, e, f, g, h, i)
        return second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K, L>(_ first: @escaping (A, B, C, D, E, F, G, H, I, J) -> K, _ second: @escaping (K) -> L) -> (A, B, C, D, E, F, G, H, I, J) -> L {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J) -> L in
        let res = first(a, b, c, d, e, f, g, h, i, j)
        return second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K, L, M>(_ first: @escaping (A, B, C, D, E, F, G, H, I, J, K) -> L, _ second: @escaping (L) -> M) -> (A, B, C, D, E, F, G, H, I, J, K) -> M {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J, k: K) -> M in
        let res = first(a, b, c, d, e, f, g, h, i, j, k)
        return second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K, L, M, N>(_ first: @escaping (A, B, C, D, E, F, G, H, I, J, K, L) -> M, _ second: @escaping (M) -> N) -> (A, B, C, D, E, F, G, H, I, J, K, L) -> N {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J, k: K, l: L) -> N in
        let res = first(a, b, c, d, e, f, g, h, i, j, k, l)
        return second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O>(_ first: @escaping (A, B, C, D, E, F, G, H, I, J, K, L, M) -> N, _ second: @escaping (N) -> O) -> (A, B, C, D, E, F, G, H, I, J, K, L, M) -> O {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J, k: K, l: L, m: M) -> O in
        let res = first(a, b, c, d, e, f, g, h, i, j, k, l, m)
        return second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P>(_ first: @escaping (A, B, C, D, E, F, G, H, I, J, K, L, M, N) -> O, _ second: @escaping (O) -> P) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N) -> P {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J, k: K, l: L, m: M, n: N) -> P in
        let res = first(a, b, c, d, e, f, g, h, i, j, k, l, m, n)
        return second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q>(_ first: @escaping (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O) -> P, _ second: @escaping (P) -> Q) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O) -> Q {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J, k: K, l: L, m: M, n: N, o: O) -> Q in
        let res = first(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o)
        return second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R>(_ first: @escaping (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P) -> Q, _ second: @escaping (Q) -> R) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P) -> R {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J, k: K, l: L, m: M, n: N, o: O, p: P) -> R in
        let res = first(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p)
        return second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S>(_ first: @escaping (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q) -> R, _ second: @escaping (R) -> S) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q) -> S {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J, k: K, l: L, m: M, n: N, o: O, p: P, q: Q) -> S in
        let res = first(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q)
        return second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T>(_ first: @escaping (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R) -> S, _ second: @escaping (S) -> T) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R) -> T {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J, k: K, l: L, m: M, n: N, o: O, p: P, q: Q, r: R) -> T in
        let res = first(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r)
        return second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U>(_ first: @escaping (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S) -> T, _ second: @escaping (T) -> U) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S) -> U {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J, k: K, l: L, m: M, n: N, o: O, p: P, q: Q, r: R, s: S) -> U in
        let res = first(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s)
        return second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V>(_ first: @escaping (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T) -> U, _ second: @escaping (U) -> V) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T) -> V {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J, k: K, l: L, m: M, n: N, o: O, p: P, q: Q, r: R, s: S, t: T) -> V in
        let res = first(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t)
        return second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, X>(_ first: @escaping (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U) -> V, _ second: @escaping (V) -> X) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U) -> X {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J, k: K, l: L, m: M, n: N, o: O, p: P, q: Q, r: R, s: S, t: T, u: U) -> X in
        let res = first(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u)
        return second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, X, Y>(_ first: @escaping (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V) -> X, _ second: @escaping (X) -> Y) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V) -> Y {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J, k: K, l: L, m: M, n: N, o: O, p: P, q: Q, r: R, s: S, t: T, u: U, v: V) -> Y in 
        let res = first(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v)
        return second(res)
    }
}

public func >>=<A, B, C>(_ first: @escaping (A) throws -> B, _ second: @escaping (B) throws -> C) -> (A) throws -> C {
    return { (a: A) throws -> C in
        let res = try first(a)
        return try second(res)
    }
}

public func >>=<A, B, C, D>(_ first: @escaping (A, B) throws -> C, _ second: @escaping (C) throws -> D) -> (A, B) throws -> D {
    return { (a: A, b: B) -> D in
        let res = try first(a, b)
        return try second(res)
    }
}

public func >>=<A, B, C, D, E>(_ first: @escaping (A, B, C) throws -> D, _ second: @escaping (D) throws -> E) -> (A, B, C) throws -> E {
    return { (a: A, b: B, c: C) -> E in
        let res = try first(a, b, c)
        return try second(res)
    }
}

public func >>=<A, B, C, D, E, F>(_ first: @escaping (A, B, C, D) throws -> E, _ second: @escaping (E) throws -> F) -> (A, B, C, D) throws -> F {
    return { (a: A, b: B, c: C, d: D) -> F in
        let res = try first(a, b, c, d)
        return try second(res)
    }
}

public func >>=<A, B, C, D, E, F, G>(_ first: @escaping (A, B, C, D, E) throws -> F, _ second: @escaping (F) throws -> G) -> (A, B, C, D, E) throws -> G {
    return { (a: A, b: B, c: C, d: D, e: E) -> G in
        let res = try first(a, b, c, d, e)
        return try second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H>(_ first: @escaping (A, B, C, D, E, F) throws -> G, _ second: @escaping (G) throws -> H) -> (A, B, C, D, E, F) throws -> H {
    return { (a: A, b: B, c: C, d: D, e: E, f: F) -> H in
        let res = try first(a, b, c, d, e, f)
        return try second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I>(_ first: @escaping (A, B, C, D, E, F, G) throws -> H, _ second: @escaping (H) throws -> I) -> (A, B, C, D, E, F, G) throws -> I {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G) -> I in
        let res = try first(a, b, c, d, e, f, g)
        return try second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J>(_ first: @escaping (A, B, C, D, E, F, G, H) throws -> I, _ second: @escaping (I) throws -> J) -> (A, B, C, D, E, F, G, H) throws -> J {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H) -> J in
        let res = try first(a, b, c, d, e, f, g, h)
        return try second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K>(_ first: @escaping (A, B, C, D, E, F, G, H, I) throws -> J, _ second: @escaping (J) throws -> K) -> (A, B, C, D, E, F, G, H, I) throws -> K {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I) -> K in
        let res = try first(a, b, c, d, e, f, g, h, i)
        return try second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K, L>(_ first: @escaping (A, B, C, D, E, F, G, H, I, J) throws -> K, _ second: @escaping (K) throws -> L) -> (A, B, C, D, E, F, G, H, I, J) throws -> L {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J) -> L in
        let res = try first(a, b, c, d, e, f, g, h, i, j)
        return try second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K, L, M>(_ first: @escaping (A, B, C, D, E, F, G, H, I, J, K) throws -> L, _ second: @escaping (L) throws -> M) -> (A, B, C, D, E, F, G, H, I, J, K) throws -> M {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J, k: K) -> M in
        let res = try first(a, b, c, d, e, f, g, h, i, j, k)
        return try second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K, L, M, N>(_ first: @escaping (A, B, C, D, E, F, G, H, I, J, K, L) throws -> M, _ second: @escaping (M) throws -> N) -> (A, B, C, D, E, F, G, H, I, J, K, L) throws -> N {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J, k: K, l: L) -> N in
        let res = try first(a, b, c, d, e, f, g, h, i, j, k, l)
        return try second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O>(_ first: @escaping (A, B, C, D, E, F, G, H, I, J, K, L, M) throws -> N, _ second: @escaping (N) throws -> O) -> (A, B, C, D, E, F, G, H, I, J, K, L, M) throws -> O {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J, k: K, l: L, m: M) -> O in
        let res = try first(a, b, c, d, e, f, g, h, i, j, k, l, m)
        return try second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P>(_ first: @escaping (A, B, C, D, E, F, G, H, I, J, K, L, M, N) throws -> O, _ second: @escaping (O) throws -> P) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N) throws -> P {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J, k: K, l: L, m: M, n: N) -> P in
        let res = try first(a, b, c, d, e, f, g, h, i, j, k, l, m, n)
        return try second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q>(_ first: @escaping (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O) throws -> P, _ second: @escaping (P) throws -> Q) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O) throws -> Q {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J, k: K, l: L, m: M, n: N, o: O) -> Q in
        let res = try first(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o)
        return try second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R>(_ first: @escaping (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P) throws -> Q, _ second: @escaping (Q) throws -> R) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P) throws -> R {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J, k: K, l: L, m: M, n: N, o: O, p: P) -> R in
        let res = try first(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p)
        return try second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S>(_ first: @escaping (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q) throws -> R, _ second: @escaping (R) throws -> S) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q) throws -> S {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J, k: K, l: L, m: M, n: N, o: O, p: P, q: Q) -> S in
        let res = try first(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q)
        return try second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T>(_ first: @escaping (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R) throws -> S, _ second: @escaping (S) throws -> T) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R) throws -> T {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J, k: K, l: L, m: M, n: N, o: O, p: P, q: Q, r: R) -> T in
        let res = try first(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r)
        return try second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U>(_ first: @escaping (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S) throws -> T, _ second: @escaping (T) throws -> U) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S) throws -> U {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J, k: K, l: L, m: M, n: N, o: O, p: P, q: Q, r: R, s: S) -> U in
        let res = try first(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s)
        return try second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V>(_ first: @escaping (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T) throws -> U, _ second: @escaping (U) throws -> V) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T) throws -> V {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J, k: K, l: L, m: M, n: N, o: O, p: P, q: Q, r: R, s: S, t: T) -> V in
        let res = try first(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t)
        return try second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, X>(_ first: @escaping (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U) throws -> V, _ second: @escaping (V) throws -> X) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U) throws -> X {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J, k: K, l: L, m: M, n: N, o: O, p: P, q: Q, r: R, s: S, t: T, u: U) -> X in
        let res = try first(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u)
        return try second(res)
    }
}

public func >>=<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, X, Y>(_ first: @escaping (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V) throws -> X, _ second: @escaping (X) throws -> Y) -> (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V) throws -> Y {
    return { (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J, k: K, l: L, m: M, n: N, o: O, p: P, q: Q, r: R, s: S, t: T, u: U, v: V) -> Y in 
        let res = try first(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v)
        return try second(res)
    }
}

