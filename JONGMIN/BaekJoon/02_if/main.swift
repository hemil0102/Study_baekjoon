//
//  main.swift
//  11~20
//
//  Created by JONGMIN Youn on 2022/02/12.
//

import Foundation

//#1

//let input1 = readLine()!
let input1 = "1 2"

let arr1 = input1.split(separator: " ").map{ Int($0)!}

if (arr1[0] > arr1[1]) {
    print(">")
} else if (arr1[0] < arr1[1]) {
    print("<")
} else if (arr1[0] == arr1[1]) {
    print("==")
}

//#2

//let input = Int(readLine()!)!
let input2 = 99

switch (input2) {
case 90...100:
    print("A")
case 80...89:
    print("B")
case 70...79:
    print("C")
case 60...69:
    print("D")
default:
    print("F")
}

//#3

//var input3: Int = Int(readLine()!)!
var input3 = 2000

if ((input3 % 4 == 0) && (input3 % 100 != 0 || input3 % 400 == 0) ) {
    print(1)
} else {
    print(0)
}

//#4

//let tp = (Int(readLine()!)!, Int(readLine()!)!)
let tp = (3, 4)

switch (tp) {
case let(x,y) where x>0 && y>0:
    print(1)
case let(x,y) where x<0 && y>0:
    print(2)
case let(x,y) where x<0 && y<0:
    print(3)
case let(x,y) where x>0 && y<0:
    print(4)
default:
    print("a")
}

//#5

//let input = readLine()!
let input5 = "0 30"

let arr5 = input5.split(separator: " ").map({Int($0)!})

if (arr5[0] > 0) {
    if (arr5[1] >= 45) {
        print(arr5[0], arr5[1]-45)
    } else if (arr5[1] < 45) {
        print(arr5[0]-1, arr5[1] + 15)
    }
} else if (arr5[0] == 0) {
    if (arr5[1] >= 45) {
        print(arr5[0], arr5[1]-45)
    } else if (arr5[1] < 45) {
        print(23, arr5[1] + 15)
    }
}

//#6

//let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//let cookTime = Int(readLine()!)!
let input6 = [14, 20]
let cookTime = 30

var hours = input6[0]
var mins = input6[1]

var totalMins = mins + cookTime

if (totalMins / 60 != 0) {
    hours += totalMins / 60 //현재시간 + 조리시간의 시간 환산 더하기
    totalMins = totalMins % 60 //조리시간의 분단위 나머지 대입
}

if (hours > 23) {
    hours -= 24
}

print("\(hours) \(totalMins)")

//#7

//let input7 = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let input7 = [3, 3, 6]

let count = Set(input7).count

if (count == 1) {
    print(10000 + input7[0] * 1000)
} else if (count == 2) {
    if (input7[0] == input7[1]){
        print(1000 + input7[0] * 100)
    } else if (input7[1] == input7[2]) {
        print(1000 + input7[1] * 100)
    } else {
        print(1000 + input7[0] * 100)
    }
} else {
    print(input7.max()! * 100)
}
