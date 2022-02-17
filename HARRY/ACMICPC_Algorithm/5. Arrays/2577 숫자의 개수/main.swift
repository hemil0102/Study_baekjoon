//
//  main.swift
//  2577 숫자의 개수
//
//  Created by YEHROEI HO on 2022/02/17.
//

import Foundation

var input = Array(repeating: 0, count: 3)
var result = 1
let resultArray: [String]

for i in 0..<input.count {
    input[i] = Int(readLine()!)!
    result *= input[i]
}


