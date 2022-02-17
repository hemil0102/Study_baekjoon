//
//  main.swift
//  Q2577, 숫자의 개수
//
//  Created by Walter J on 2022/02/17.
//

import Foundation

var nineNums = Array(repeating: 0, count: 10)
var sumTheNums = 1
for _ in 0...2 {
   sumTheNums *= Int(readLine()!)!
}

var temp = sumTheNums
for _ in String(sumTheNums) {
    let num = temp%10
    temp = temp/10
  
    nineNums[num] += 1
}

for nums in nineNums {
    print(nums)
}
