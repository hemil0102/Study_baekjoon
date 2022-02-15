//
//  main.swift
//  03_for
//
//  Created by JONGMIN Youn on 2022/02/15.
//

import Foundation

//#1
//let input1 = Int(readLine()!)!
let input1 = 3

for i in 1...9 {
    print("\(input1) * \(i) = \(input1*i)")
}

//#2
//let input2 = Int(readLine()!)!
let input2 = 5

for _ in 1...input2 {
    //let temp = readLine()!
    let temp = "2 3"
    let arr = temp.split(separator: " ").map{ Int($0)!}
    print(arr[0] + arr[1])
}

//#3

//let input3 = Int(readLine()!)!
let input3 = 3
var result3: Int = 0
var flag3: Int = 1

while (input3 >= flag3) {
    result3 += flag3
    flag3 += 1
}
print(result3)

//#4

//#5
//let input5 = Int(readLine()!)!
let input5 = 5

for i in 1...input5 {
    print(i)
}

//#6
//let input6 = Int(readLine()!)!
let input6 = 5

for i in 0..<input6 {
    print(input6 - i)
}


//#7
//let input7 = Int(readLine()!)!
let input7 = 5

for i in 1...input7 {
    //let temp = readLine()!
    let temp = "1 1"
    let arr = temp.split(separator: " ").map{ Int($0)!}
    print("Case #\(i): \(arr[0] + arr[1])")
}


//#8
//let input8 = Int(readLine()!)!
let input8 = 5

for i in 1...input8 {
    //let temp = readLine()!
    let temp = "1 1"
    let arr = temp.split(separator: " ").map{ Int($0)!}
    print("Case #\(i): \(arr[0]) + \(arr[1]) = \(arr[0] + arr[1])")
}

//#9
//let input9 = Int(readLine()!)!
let input9 = 5

for i in 1...input9 {
    for _ in 1...i{
        print(terminator: "*")
    }
    print("")
}

//#10
//let input10 = Int(readLine()!)!
let input10 = 5

for i in 1...input10 {
    for _ in stride(from: input10-i, to: 0,by: -1) {
        print(terminator: " ")
    }
    for _ in 1...i{
        print(terminator: "*")
    }
    print("")
}

//#11

let input11 = readLine()!
let inputArr11 = input11.split(separator: " ").map{ Int($0)! }

let input112 = readLine()!
let inputArr112 = input11.split(separator: " ").map{ Int($0)! }
//readLine()!.split(separator: " ").map{ Int($0)! }

for num in inputArr11 {
    if (num < inputArr11[1]) {
        print(num, terminator: " ")
    }
}
