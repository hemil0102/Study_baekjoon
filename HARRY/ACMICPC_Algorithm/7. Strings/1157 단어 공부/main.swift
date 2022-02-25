//
//  main.swift
//  1157 단어 공부
//
//  Created by YEHROEI HO on 2022/02/24.
//

import Foundation

let input = readLine()!.lowercased() // 문자를 입력받아 소문자로 변환
//print(input)
let inputCharacter = Array(input) // 문자열을 문자 배열로 변환
//print(inputCharacter)
let checkInput = Set(inputCharacter) // 배열에서 중복값 제거
//print(checkInput)
var countCharacter:Dictionary<String, Int> = [:] // 입력 문자열의 중복된 문자의 횟수를 카운트


for setValue in checkInput {
    countCharacter["\(setValue)"] = 0  // 각 문자를 키로 0 값을 지정
    for wholeValue in inputCharacter {
        if setValue == wholeValue {
            countCharacter["\(setValue)"]! += 1 // setValue 문자열 키에 해당하는 입력 문자가 들어오면 +1하여 입력 문자열내 중복 문자를 카운트
        }
    }
}

//print(countCharacter)

let valueSortedDict = countCharacter.sorted(by: {$0.1 < $1.1} ) // 첫번째 키의 값이 두번째 키의 값보다 작으면 새로운 배열에 추가한다.
let index = valueSortedDict.count - 1

if index == 0 {
    print(valueSortedDict[index].key.uppercased())
} else if index > 0 {
    if valueSortedDict[index].value == valueSortedDict[index - 1].value {
        print("?")
    } else {
        print(valueSortedDict[index].key.uppercased())
    }
}

