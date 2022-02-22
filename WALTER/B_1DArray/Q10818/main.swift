//
//  main.swift
//  Q10818, 최소/최대값 구하기.
//
//  Created by Walter J on 2022/02/17.
//

import Foundation

let testCase = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
test1()  //시간초과

func test1() {
    let minValue = nums.min()
    let maxValue = nums.max()

    if let min = minValue, let max = maxValue {
        print("\(min) \(max)")
    }
}
