//
//  main.swift
//  06_Function
//
//  Created by JONGMIN Youn on 2022/02/16.
//

import Foundation

//#1

var s: Set<Int> = []

for i in 1...10000 {
    s.insert(d(i))
}

for j in 1...10000 {
    if !s.contains(j) {
        print(j)
    }
}

func d(_ input: Int) -> Int {
    
    var sum: Int = 0
    sum += input
    var remain: Int = input
    
    while (remain != 0) {
        sum += remain % 10
        remain = remain/10
    }
    return sum
}

//#2

//#3
