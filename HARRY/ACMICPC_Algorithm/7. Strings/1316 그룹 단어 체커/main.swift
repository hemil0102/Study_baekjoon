//
//  main.swift
//  1316 그룹 단어 체커
//
//  Created by YEHROEI HO on 2022/02/26.
//

import Foundation

let count = Int(readLine()!)!
var input: String = ""
var checkGroup = [String : Int]()
var countNumber = 0

Check: for _ in 0..<count {
    input = readLine()!
    let inputArray = Array(input) // 입력 문자열을 문자 배열로
    for (index, value) in inputArray.enumerated() {
      checkGroup["\(value)"] = index
    }
    
    if checkGroup.count == 1 {    // 문자가 하나이거나, 문자가 같은 값으로 연속되었을 경우
        countNumber += 1
        checkGroup.removeAll()
        continue Check
    }
    
    //print(checkGroup)
    
    if checkGroup.count == inputArray.count { // 서로 각기 다른 문자가 입력될 경우
        countNumber += 1
        checkGroup.removeAll()
        continue Check
    }
    
Check2: for (key, value) in checkGroup {
        for (index, char) in inputArray.enumerated() {
            if key == String(char) {
                if Set(inputArray[index...value]).count != 1 {
                    checkGroup.removeAll()
                    continue Check
                } else if Set(inputArray[index...value]).count == 1 {
                    continue Check2
                }
            }
        }
    }
    
    countNumber += 1
    checkGroup.removeAll()
    
}

    print(countNumber)

//충족해야할 조건
// 맨 뒤에 문자 인덱스 확인(완료) -> 딕셔너리에 저장
// 맨 뒤에 문자(키)가 앞에 출력되었어? -> 구현 필요
// 앞에 출력된 문자와 맨뒤 문자 사이에 다른 문자가 있어?
// Yes(불연속) -> 연속이 아니므로 Counter 를 추가하지 않음
// No(연속 확인 및 각 조건 충족) ->
// aabbaa
//a 한글자가 입력되었을 때는 그냥 1을 추가하고 종료
//aa, bbbbbbb -> 연속 ->
//ab 배열의 인덱스가 딕셔너리와 같아? -> CountNumber +1
