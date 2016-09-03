import Foundation

/*: # Binding

 _Binding_ is the act of taking two operations and combining them
 into a single operation which performs both. Say you have the
 functions `parseString` and `parseCSV` below:
 */
struct StringParsingException : Error {}
func parseString(fromData data: Data) throws -> String {
    if let str = String(data: data, encoding: .ascii) {
        return str
    } else {
        throw StringParsingException()
    }
}

func parseCSV(fromString string: String) -> [Int] {
    let values = string.components(separatedBy: ",")
    return values.flatMap { Int($0) }
}

/*: 
 However, being the busy bee that you are, you figured there has
 to be a way to avoid writing `parseCSV(parseString(...))` each
 time you want to parse that CSV data. This is where binding
 comes into play.
 */
let data = "1,2,3,4,5,6,7".data(using: .ascii)!
let parseCSV = parseString >>= parseCSV(fromString:)
try! parseCSV(data)
/*:
 By binding parseString to parseCSV, you get a new operation that
 takes an input of `Data` and produces an output of `[Int]`. It 
 retains the `throws` attribute of the first function, making it
 necessary to prepend the call with `try` as the function might
 throw an error. Of course, additional functions can be chained as well.
 */
func average(input: [Int]) -> Int {
    return input.reduce(0, +) / input.count
}

let parseAndAverage = parseString
    >>= parseCSV(fromString:)
    >>= average
try! parseAndAverage(data)

/*:
 You can even bind to functions that take multiple parameters, thanks
 to the way Swift's tuples work:
 */
func produceThree(input: Int) -> (Int, Int, Int) {
    return (input, input, input)
}

func multiplyThree(a: Int, b: Int, c: Int) -> Int {
    return a * b * c
}

let multiplyAll = produceThree >>= multiplyThree
multiplyAll(5)