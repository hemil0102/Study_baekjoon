//
//  main.swift
//  Q4673, 셀프 넘버
//
//  Created by Walter J on 2022/02/18.
//

import Foundation

func getSequence(_ n: Int) -> Int {
    var res = n
    if n >= 10 {
        res += n / 10
        n %= 10
    }
    
    return res += n     //생성자
}

var selfNumber = Array(repeating: 0, count: 10001)
for num in 1...10000 {
    let n = getSequence(num)
    selfNumber[n] = 1
}

for selfNum in selfNumber {
    if !selfNum {
        print(selfNum)
    }
}
