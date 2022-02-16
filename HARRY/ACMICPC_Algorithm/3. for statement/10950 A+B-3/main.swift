//
//  main.swift
//  10950 A+B-3
//
//  Created by YEHROEI HO on 2022/02/16.
//

import Foundation

let caseNumber = Int(readLine()!)!
var result = Array(repeating:0, count:caseNumber)

for i in 0...caseNumber-1 {
    let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    result[i] = input[0] + input[1]
}

for i in 0...caseNumber-1 {
    print(result[i])
}

