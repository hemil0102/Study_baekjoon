//
//  main.swift
//  Q4673, 셀프 넘버
//
//  Created by Walter J on 2022/02/18.
//

import Foundation

var selfNumber = Array(repeating: 0, count: 10001)
for num in 1..<selfNumber.count{
    let n = d(num)
    
    if n < 10001 {
        selfNumber[n] = 1
    }
}

for (idx, selfNum) in selfNumber.enumerated() {
    if idx != 0 && selfNum != 1 {
        print(idx)
    }
}

func d(_ n: Int) -> Int {
    var result = n
    var nT = n
    
    while nT != 0 {
        result += (nT % 10)
        nT /= 10
    }
    
    return result
}
