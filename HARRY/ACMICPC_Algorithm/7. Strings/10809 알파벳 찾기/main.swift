//
//  main.swift
//  10809 알파벳 찾기
//
//  Created by YEHROEI HO on 2022/02/23.
//

import Foundation

let input = readLine()!
let inputArray = Array(input)
var defaultAlphabet = ["a" : -1, "b" : -1, "c" : -1, "d" : -1, "e": -1, "f": -1, "g":-1,
                       "h" : -1, "i" : -1, "j" : -1, "k" : -1, "l": -1, "m": -1, "n":-1,
                       "o" : -1, "p" : -1, "q" : -1, "r" : -1, "s": -1, "t": -1, "u":-1,
                       "v" : -1, "w" : -1, "x" : -1, "y" : -1, "z": -1]

var resultAlphabet = defaultAlphabet

for (key, _) in defaultAlphabet {
    for (index, data) in inputArray.enumerated() {
        if key == String(data) && resultAlphabet[key] == -1 {
            resultAlphabet[key] = index
        }
    }
}

let sortedResult = resultAlphabet.sorted { $0.0 < $1.0 }
for (_, value) in sortedResult {
    print(value, terminator: " ")
}
