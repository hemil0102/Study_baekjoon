//
//  main.swift
//  2588_곱셈
//
//  Created by YEHROEI HO on 2022/02/16.
//

import Foundation

let input1 = Int(readLine()!)!
let input2 = Array(readLine()!).map {Int(String($0))!}

let result3 = input1 * input2[2]
var result4 = input1 * input2[1]
var result5 = input1 * input2[0]
print(result3)
print(result4)
print(result5)
var result4Temp = Array(String(result4)).map { String($0) }
var result5Temp = Array(String(result5)).map { String($0) }
result4Temp.append("0")
result4 = Int(result4Temp.joined())!
result5Temp.append("0")
result5Temp.append("0")
result5 = Int(result5Temp.joined())!
print(result3 + result4 + result5)
