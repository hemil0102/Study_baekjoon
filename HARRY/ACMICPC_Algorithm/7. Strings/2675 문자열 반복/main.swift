//
//  main.swift
//  2675 문자열 반복
//
//  Created by YEHROEI HO on 2022/02/24.
//

import Foundation

let count = Int(readLine()!)!
var repeatNum = 0
var calArray: [Character] = []
var resultArray = Array(repeating: " ", count: count)

for i in 0..<count {
    let input = readLine()!.split(separator: " ").map{ String($0) }
    repeatNum = Int(input[0])! // 문자가 재생성될 횟수
    let wholeCharacter = Array(input[1]) //입력된 문자열을 문자로 변환
    
    for j in wholeCharacter //문자열 갯수만큼 for문 반복
    {
        for _ in 1...repeatNum { //재생성될 갯수만큼 반복
            calArray.append(j) //문자를 재생성
        }
    }
    
    //print(i)
    //print(calArray)
    resultArray[i] = String(calArray)
    calArray.removeAll()
    
}

for i in resultArray {
    print(i)
}
