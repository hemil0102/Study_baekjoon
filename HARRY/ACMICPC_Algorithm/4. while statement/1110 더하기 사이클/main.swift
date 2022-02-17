//
//  main.swift
//  1110 더하기 사이클
//
//  Created by YEHROEI HO on 2022/02/16.
//


// N 0 ~ 99
// N < 10, -> 01, 02 -> 0 + 1
// 
import Foundation

let input = readLine()! // String? unwrap
var underTenString: String // 초기 값을 두 자리로 나누기 위한 변수
var result = 0 // 계산 결과값
var newValue = 0 // 새로운 수
var resultString: String // 결과 값을 두 자리로 나누기 위한 변수
var initEachNumber = [Character]() // 초기 값을 두 자리로 나누어서 문자 값을 할당할 배열
var resultEachNumber = [Character]() // 결과 값을 두 자리로 나누어서 문자 값을 할당할 배열
let underTen = 10 // 입력이 10보다 작은가?
var initValue1 = 0 // 나눠진 자릿 수를 계산하기 위해 문자를 int로 변환
var initValue2 = 0 // 나눠진 자릿 수를 계산하기 위해 문자를 int로 변환
var cycle = 0 // while문 내에서 반복된 값을 증가시킴

if Int(input)! < underTen {
    underTenString = String(format: "%02d", Int(input)!) // 10보다 작은 수에 앞자리 0 추가 및 문자열로 변환
    //print(underTenString) // 앞자리 0 추가되었는지 확인
    initEachNumber = Array(underTenString) //문자열을 문자 배열로
    //print(initEachNumber) //잘 할당되었는지 확인
} else {
    initEachNumber = Array(input) //입력이 10보다 클 경우 문자열을 두자리 배열로 할당
    //print(initEachNumber) //입력이 두자리 문자로 잘 들어갔는지 확인
}

repeat {
    initValue1 = initEachNumber[0].wholeNumberValue!
    initValue2 = initEachNumber[1].wholeNumberValue!
    result = initValue1 + initValue2
    cycle += 1
    
    resultString = String(format: "%02d", result)
    resultEachNumber = Array(resultString)
    initEachNumber[0] = initEachNumber[1]
    initEachNumber[1] = resultEachNumber[1]
    newValue = Int(String(initEachNumber))!

} while newValue != Int(input)!
print(cycle)
