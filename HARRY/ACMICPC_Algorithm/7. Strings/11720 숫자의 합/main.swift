//
//  main.swift
//  11720 숫자의 합
//
//  Created by YEHROEI HO on 2022/02/23.
//

import Foundation

let count = Int(readLine()!)!
let input = readLine()!
let inputArray = Array(input)
var result = 0

for i in inputArray {
    result += Int(String(i))!
}

print(result)
