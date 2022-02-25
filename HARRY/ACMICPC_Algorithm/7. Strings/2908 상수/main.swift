//
//  main.swift
//  2908 상수
//
//  Created by YEHROEI HO on 2022/02/25.
//

import Foundation

let input = readLine()!.split(separator: " ").map{ $0 }
let firstnumber = Array(input[0])
let secondnumber = Array(input[1])
var reversedFirstNumber: [Character] = []
var reversedSecondNumber: [Character] = []
var result: [Int] = []

for i in firstnumber.reversed() {
    reversedFirstNumber.append(i)
}

result.append(Int(String(reversedFirstNumber))!)

for i in secondnumber.reversed() {
    reversedSecondNumber += "\(i)"
}

result.append(Int(String(reversedSecondNumber))!)

print(result.max()!)


