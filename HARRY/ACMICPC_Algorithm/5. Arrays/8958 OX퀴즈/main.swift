//
//  main.swift
//  8958 OX퀴즈
//
//  Created by YEHROEI HO on 2022/02/18.
//

import Foundation

let count = Int(readLine()!)!
var input = Array(repeating: " ", count: count)
var scores = Array(repeating: 0, count: count)
var characterizedInput = [Character]()
var counter = 1
let checkO: Character = "O"
let checkX: Character = "X"
let firstIndex = 0

for i in 0..<count {
    input[i] = readLine()!
    characterizedInput = Array(String(input[i]))
    // print(characterizedInput)
    for (index, value) in characterizedInput.enumerated() {
        if value == checkO && index == firstIndex { // 맨 처음 값을 확인하는 조건문
               counter = 1
               scores[i] += counter // counter 초기값은 1
        } else if value == checkX { // X일 때 카운터를 1로 초기화
               counter = 1
        }
     //   print(scores)
        if index >= 1 { // 초기 값 이후에 앞에 값을 비교하는 조건문
           if value == checkO && characterizedInput[index - 1] == checkO {
              // print("I am in the first statement")
                    counter += 1 // 현재 값과 이전 값이 O라면 카운터는 +1
        //            print(counter)
                    scores[i] += counter // 증가한 카운터를 스코어에 중복 누적
           } else if value == checkO && characterizedInput[index - 1] == checkX {
              // print("I am in the second statement")
                    counter = 1
                    scores[i] += counter
           }
        }
     //   print(scores)
    }
}

for i in scores {
    print(i)
}
