//
//  main.swift
//  2577 숫자의 개수
//
//  Created by YEHROEI HO on 2022/02/17.
//

import Foundation

var input = Array(repeating: 0, count: 3)
var result = 1
let resultArray: [Character]
var count = Array(repeating: 0, count: 10)
for i in 0..<input.count {
    input[i] = Int(readLine()!)!
    result *= input[i]
}

resultArray = Array(String(result))
//print(resultArray)

for i in 0..<resultArray.count {
    switch resultArray[i] {
    case "0":
        count[0] += 1
    case "1":
        count[1] += 1
    case "2":
        count[2] += 1
    case "3":
        count[3] += 1
    case "4":
        count[4] += 1
    case "5":
        count[5] += 1
    case "6":
        count[6] += 1
    case "7":
        count[7] += 1
    case "8":
        count[8] += 1
    case "9":
        count[9] += 1
    default:
        print("never be excuted.")
    }
}

//print(count)
for i in count {
    print(i)
}

