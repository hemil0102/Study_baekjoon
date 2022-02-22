//
//  main.swift
//  Q11720
//
//  Created by Walter J on 2022/02/22.
//

import Foundation

let testCase = readLine()!

var numArr:[Int] = []
readLine()?.forEach { numArr.append(Int(String($0))!) }
print(numArr.reduce(0, +))
