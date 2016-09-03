
import Foundation

var alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "X", "Y", "Z"]

func generateBody(letters: [String]) -> String {
    let lowercased = letters.map { $0.lowercased() }
    return "return { (\(letters[0...letters.count-3].map { "\($0.lowercased()): \($0)" }.joined(separator: ", "))) -> \(letters.last!) in \n" +
        "\t\tlet res = first(\(lowercased[0...lowercased.count-3].joined(separator: ", ")))\n" +
        "\t\treturn second(res)\n\t}"
}

for i in 3...23 {
    let letters = alphabet[0...i]
    let funcdef = "public func >>="
    let generics = "<\(letters.joined(separator: ", "))>"
    let params = "(_ first: @escaping (\(letters[0...i-2].joined(separator: ", "))) -> \(letters[i-1]), _ second: @escaping (\(letters[i-1])) -> \(letters.last!))"
    let retdef = "(\(letters[0...i-2].joined(separator: ", "))) -> \(letters.last!) {"
    let body = generateBody(letters: Array(letters))
    print("\(funcdef)\(generics)\(params) -> \(retdef)\n\t\(body)\n}")
    print("")
}
