//
//  main.swift
//  B_While
//
//  Created by Walter J on 2022/02/16.
//

import Foundation

while let input = readLine() {
    let cases = input.components(separatedBy: " ").map { Int($0)! }
    
    let num1 = cases[0]
    let num2 = cases[1]
    let result = num1 + num2
    print(result)
}
