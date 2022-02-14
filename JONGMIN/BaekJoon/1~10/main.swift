//
//  main.swift
//  1~10
//
//  Created by JONGMIN Youn on 2022/02/12.
//

import Foundation

//#1

print("Hello World!")

//#2

for _ in  0...1 {
    print("강한친구 대한육군")
}

//#3

let cat = #"""
\    /\
 )  ( ')
(  /  )
 \(__)|
"""#

print(cat)

//#4

let a = #"""
|\_/|
|q p|   /}
( 0 )"""\
|"^"`    |
||_/=\\__|
"""#
print(a)

//#5

//let line = readLine()! //한줄을 받아 문자열로
let line = "1 2"
let intArr = line.components(separatedBy: " ").map{ Int($0)! }
//" "로 separated된 요소들을 전부 배열로 리턴하여 map 처리
print(intArr.reduce(0, +))
//reduce로 리턴된 배열을 순회하여 0에서부터 더한다.

//#6
//let line2 = readLine()! //한줄 다 받기
let line2 = "1 2"
let intArr2 = line2.components(separatedBy: " ").map{ Int($0)! }
//map함수로 " "로 separated된 요소들을 전부 배열로 리턴한다.
print(intArr2.reduce(0, { x, y in -x - y }))
//reduce로 리턴된 배열을 순회하여 0에서부터 더한다.

//#7
//let line = readLine()! //한줄 다 받기
let line3 = "1 2"
let intArr3 = line3.components(separatedBy: " ").map{ Int($0)! }
//map함수로 " "로 separated된 요소들을 전부 배열로 리턴한다.
print(intArr3.reduce(1, *))
//reduce로 리턴된 배열을 순회하여 0에서부터 더한다.

//#8
//print(1 / readLine()!.split(separator: " ").map{ Double($0)! }.reduce(1){ x, y in y / x })
//x is result in sequence

//#9
//let input = readLine()!
let input = "1 2"

let arr = input.split(separator: " ").map{ Int($0)!}

print(arr[0] + arr[1])
print(arr[0] - arr[1])
print(arr[0] * arr[1])
print(arr[0] / arr[1])
print(arr[0] % arr[1]) //% operator is not availabe for double

//#10

//let inputStr = readLine()!
let inputStr = "joonas"
print(inputStr + "??!")


