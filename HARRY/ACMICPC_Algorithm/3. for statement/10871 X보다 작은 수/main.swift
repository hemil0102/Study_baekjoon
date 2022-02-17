//
//  main.swift
//  10871 X보다 작은 수
//
//  Created by YEHROEI HO on 2022/02/16.
//

import Foundation

let input1 = readLine()!.components(separatedBy: " ").map { Int($0)! }
let input2 = readLine()!.components(separatedBy: " ").map { Int($0)! }
var result = Array<Int>()

for i in 0..<input1[0] {
    if input2[i]  < input1[1] {
        result.append(input2[i])
    }
}

for i in 0..<result.count {
    print(result[i], terminator: " ")
}
