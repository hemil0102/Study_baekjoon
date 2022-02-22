//
//  main.swift
//  Q1065
//
//  Created by Walter J on 2022/02/20.
//

import Foundation

//입력
let num = Int(readLine()!)!

var result = 0

for n in 1...num {
    result += getHanNumber(n)
}

print(result)       //한수 갯수 출력


//Han Number
func getHanNumber(_ num: Int) -> Int {
    if num < 10 { return 1 }

    var result = 0
    var nT = num
    //num 10
    
    while nT != 0 {
        nT /= 10
    }

    return result
}
