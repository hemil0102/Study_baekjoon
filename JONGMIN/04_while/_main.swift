//
//  main.swift
//  04_while
//
//  Created by JONGMIN Youn on 2022/02/15.
//

import Foundation

//#1

while (true) {
    //let input = readLine()!
    let input1 = "1 1"
    
    let inputArr = input1.split(separator: " ").map{ Int($0)! }
    if (inputArr[0] == 0 && inputArr[1] == 0) {
        break;
    } else {
        print((inputArr[0] + inputArr[1]))
    }
}

//#2

while (true) {
    //let input = readLine()
    let input2: String! = "1 1"
    
    if let _input = input2 {
        let inputArr = _input.split(separator: " ").map{ Int($0)! }
        print(inputArr[0] + inputArr[1])
    } else {
        break;
    }
}

//#3
//let input = Int(readLine()!)!
let input3 = 3

var count3 = 0
var result3 = input3

repeat {
    let l = result3 / 10
    let r = result3 % 10
    let sum = l + r
    
    result3 = r * 10 + sum % 10
    count3 += 1
} while(input3 != result3)

print(count3)
