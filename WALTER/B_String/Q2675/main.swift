//
//  main.swift
//  Q2675, 문자열 반복
//
//  Created by Walter J on 2022/02/23.
//

import Foundation

var result = ""
for _ in 0..<Int(readLine()!)! {
    let inputStr = readLine()!.split(separator: " ")
    for word in inputStr[1] {
        for _ in 0..<Int(inputStr[0])! {
            result.append(word)
        }
    }
    
    print(result)
    result = ""
}
