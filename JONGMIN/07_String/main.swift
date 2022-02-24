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

//let word = readLine()!.uppercased()
let word = "baaa"
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

//#6
//let input6 = readLine()!.components(separatedBy: " ")
let input6 = " the first char is a blank ".components(separatedBy: " ")

//print(input6)

var result = 0

if (input6[0] != "" && input6[input6.endIndex - 1] != "") {
    result = input6.count
} else if (input6[0] == "" && input6[input6.endIndex - 1] == "") {
    result = input6.count - 2
} else {
    result = input6.count - 1
}
print(result)

//#7

//let input7 = String(readLine()!.reversed()).components(separatedBy: " ").map { Int($0)! }
let input7 = "123 456"
print(input7.max()!)


//#8

/*
 1. 알파벳 각각이 속하는 곳의 숫자 발췌
 2. 발췌한 숫자를 전부 더하고,
 3. 전부 더한 값에 발췌한 숫자의 개수를 더더하나
 
 */

//let input8 = readLine()!.lowercased()
let input8 = "WA".lowercased()

let alphabetToInt = [2: "abc", 3: "def", 4: "ghi", 5: "jkl", 6: "mno", 7: "pqrs", 8: "tuv", 9: "wxyz"]


var count8 = input8.count

for char in input8 {
    for (key, value) in alphabetToInt{
        if (value.contains(char)) {
            count8 += key
        }
    }
}

print(count8)

//#9

//#10

/*
1.세트화로 찾을 알파뱃 축소(중복제거)
2.세트의 요소 하나로 인풋의 배열에 첫번째 인덱스를 찾아서
 
 */

var count10 = 0

for _ in 0..<Int(readLine()!)! {
    let input = readLine()!
    
    var storeInput: [Character] = []
    
    for char in input {
        if (!storeInput.contains(char)) {
            storeInput.append(char)
        } else if storeInput.last! != char { //포함되어 있으나, 마지막 글자와 다르면 검사 끝
            storeInput.removeAll() //storeInput 전체 삭제 시키고 반복문 종료
            break
        }
    }
    
    if ( storeInput.count != 0) {
        count10 += 1
    }
}

print(count10)

