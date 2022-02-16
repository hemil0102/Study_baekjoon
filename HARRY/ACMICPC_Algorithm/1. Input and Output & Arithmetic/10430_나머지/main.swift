//
//  main.swift
//  10430_나머지
//
//  Created by YEHROEI HO on 2022/02/16.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
print((input[0]+input[1])%input[2])
print(((input[0]%input[2])+(input[1]%input[2]))%input[2])
print((input[0]*input[1])%input[2])
print(((input[0]%input[2])*(input[1]%input[2]))%input[2])


