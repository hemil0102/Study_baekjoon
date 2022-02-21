//
//  main.swift
//  3052 나머지
//
//  Created by YEHROEI HO on 2022/02/18.
//

import Foundation

var input = Array(repeating: 0, count: 10)
var divider = 42
var result = Array(repeating: 0, count: 10)
var resultToSet = Set<Int>()

for i in 0..<input.count {
    input[i] = Int(readLine()!)!
    result[i] = input[i] % divider
    //print(result)
}

//print(result)
resultToSet = Set(result) //Set removes duplicate values in Array
//print(resultToSet)
print(resultToSet.count)
