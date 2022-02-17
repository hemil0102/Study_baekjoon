//
//  main.swift
//  10869_사칙연산
//
//  Created by YEHROEI HO on 2022/02/16.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
print(input[0] + input[1])
print(input[0] - input[1])
print(input[0] * input[1])
print(input[0] / input[1])
print(input[0] % input[1])
