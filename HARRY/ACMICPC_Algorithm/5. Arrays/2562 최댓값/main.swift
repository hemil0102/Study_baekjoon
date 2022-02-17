//
//  main.swift
//  2562 최댓값
//
//  Created by YEHROEI HO on 2022/02/17.
//

import Foundation

var input = Array(repeating: 0, count: 9) //
var max = 0

for i in 0..<input.count {
    input[i] = Int(readLine()!)!
}

for i in input {
    if max < i {
        max = i
    }
}

for ( j , i ) in input.enumerated() {
    if max == i {
        print(max)
        print(j + 1)
    }
}
