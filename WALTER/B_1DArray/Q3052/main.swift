//
//  main.swift
//  Q3052, 나머지
//
//  Created by Walter J on 2022/02/17.
//

import Foundation

var restArr = Set<Int>()
for _ in 0...9 {
    let num = Int(readLine()!)!
    restArr.insert(num%42)
}
print(restArr.count)
