//
//  main.swift
//  07_String
//
//  Created by JONGMIN Youn on 2022/02/22.
//

import Foundation

//#1
//let input = Character(readLine()!)
let input1 = Character("A")
print(input1.asciiValue!)

//#2
//let number2 = Int(readLine()!)
//let arr2 = readLine()!
let arr2 = "12345"

var total2: Int = 0

for char in arr2 {
    //total2 += Int(String(char))!
    total2 += char.wholeNumberValue!
}

print(total2)

//#3

//let input3 = readLine()!
let input3 = "backjoon"

let alphabet = "abcdefghijklmnopqrstuvwxyz"
var count = 0

for char in alphabet {
    //a
    if (!input3.contains(char)) {
        print("-1", terminator: " ")
    } else {
        for char2 in input3 {
            if (char != char2) {
                count += 1
                continue
            } else {
                break
            }
        }
        print(count, terminator: " ")
        count = 0
    }
}
print()

//#4

//let input = Int(readLine()!)! //2
let input = 2

var arr4: [String] = []

//for _ in 0..<input {
//    let str = readLine()!
//    arr4.append(str)
//}

arr4 = ["3 ABC", "5 /HTP"]

for str in arr4 {
    let num4 = Int(str.components(separatedBy: " ")[0])!
    let str4 = str.components(separatedBy: " ")[1]

    for char in str4 {
        for _ in 0..<num4 {
            print(char, terminator: "")
        }
    }
    print()
}


//#5
//a : 65, A : 97 32차이...
//전부 uppercased()

//let input5 = readLine()!.uppercased()
//var splitted: [Character] = []
//
//input5.forEach { char in
//    splitted.append(char)
//}
//
//let inputSet: Set<Character> = Set(splitted) //인풋이 가진 알파벳 추출
//
//var finalCount = 0
//var finalChar = ""
//
//for char in inputSet {
//    let count = splitted.filter { $0 == char }.count
//
//    if ( count > finalCount ) {
//        finalCount = count
//        finalChar = String(char)
//    } else if (count == finalCount) {
//        finalChar = "?"
//    } //여기서 딕셔너리 활용해도 됨.
//}
//
//print(finalChar)

//#5 another answer

let word = readLine()!.uppercased()
var splitted2: [Character] = []

word.forEach { character in
    splitted2.append(character)
}

let alphabetSet: Set<Character> = Set(splitted2)
var counted: [Character: Int] = [:]

for alphabet in alphabetSet {
    let number = splitted2.filter { character in
        return alphabet == character
    }.count
    counted[alphabet] = number //인풋 단어가 갖고있는 알파뱃과 그 숫자를 딕셔너리에 저장
}

print(counted)

let filtered = counted.filter { dictionary in
    return dictionary.value == counted.values.max()!
} //최대 알파벳의 개수와 같은걸 찾아서, 새로운 딕셔너리 리턴. 만약 value 가 같은게 2개 이상이면, 2개 모두 리턴하기 떄문에
//아래 로직에서 .count == 1로 솎아낸다... 개똑똑

print("filtered : \(filtered)")

if filtered.count == 1 { //
    print(filtered.first!.key)
} else {
    print("?")
}



