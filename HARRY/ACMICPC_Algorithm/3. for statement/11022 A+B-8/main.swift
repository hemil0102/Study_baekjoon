//
//  main.swift
//  11022 A+B-8
//
//  Created by YEHROEI HO on 2022/02/16.
//


import Foundation

let caseNumber = Int(readLine()!)!
var result = Array(repeating:0, count:caseNumber)
var input1 = Array(repeating:0, count:caseNumber)
var input2 = Array(repeating:0, count:caseNumber)

for i in 0...caseNumber-1 {
    let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    input1[i] = input[0]
    input2[i] = input[1]
    result[i] = input1[i] + input2[i]
}

for i in 0...caseNumber-1 {
    print("Case #\(i+1): \(input1[i]) + \(input2[i]) = \(result[i])")
}
