//
//  main.swift
//  5622 다이얼
//
//  Created by YEHROEI HO on 2022/02/25.
//

import Foundation

let input = Array(readLine()!)

var dial = ["ABC" : 3, "DEF" : 4, "GHI" : 5, "JKL" : 6, "MNO" : 7, "PQRS" : 8, "TUV" : 9, "WXYZ" : 10]
var result = 0

for i in input {
    let condition: ((String, Int)) -> Bool = {
        $0.0.contains("\(i)")
    }
    
    for value in dial.filter(condition).values {
        result += value
    }
}

print(result)
