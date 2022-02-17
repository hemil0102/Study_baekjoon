//
//  main.swift
//  10951 A+B-4
//
//  Created by YEHROEI HO on 2022/02/16.
//


import Foundation

var result = Array<Int>()

while let input = readLine() {
    let realValue = input.components(separatedBy: " ").map { Int($0) }
    if realValue[0] == nil {
        break
    }
    result.append(realValue[0]! + realValue[1]!)

}

var counter = 0

while counter < result.count {
    print(result[counter])
    counter += 1
}
