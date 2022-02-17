//
//  main.swift
//  Q2562, 최댓값 구하기
//
//  Created by Walter J on 2022/02/17.
//

import Foundation

var nums = [Int]()
for _ in 0..<9  {
    nums.append(Int(readLine()!)!)
}

var maxV = 0
var index = 0
for (idx, num) in nums.enumerated() {
    if num > maxV {
        maxV = num
        index = idx
    }
}

print("\(maxV)\n\(index+1)")
