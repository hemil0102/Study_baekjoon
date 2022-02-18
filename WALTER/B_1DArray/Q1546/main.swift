//
//  main.swift
//  Q1546
//
//  Created by Walter J on 2022/02/18.
//

import Foundation

let count = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
let maxV = nums.max()!
var totalScore = 0.0
for num in nums {
    totalScore += Double(num) / Double(maxV) * 100
}

print(totalScore / Double(count))
