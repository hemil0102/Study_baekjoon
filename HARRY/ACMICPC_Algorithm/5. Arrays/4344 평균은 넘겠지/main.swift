//
//  main.swift
//  4344 평균은 넘겠지
//
//  Created by YEHROEI HO on 2022/02/18.
//

import Foundation

let caseOfClasses = Int(readLine()!)!
var numberOfStudentsAndScores = [Double]()
var totalScore = Array(repeating: 0.0, count: caseOfClasses)
var numberOfStudents = Array(repeating: 0.0, count: caseOfClasses)
var averageOfScores = 0.0
var numberOverAverage = 0
var finalResult = Array(repeating: 0.0, count: caseOfClasses)

for i in 0..<caseOfClasses {
    // 학생수와 점수를 입력 받는다.
    numberOfStudentsAndScores = readLine()!.split(separator: " ").map { Double(String($0))! }
     //print(numberOfStudentsAndScores)
    
    // 첫번 째 index는 학생 수이므로 별도 변수에 할당하여 관리
    numberOfStudents[i] = numberOfStudentsAndScores[0]
     //print(numberOfStudents)
    
    // 해당 반의 전체 점수를 계산
    for (index, scores) in numberOfStudentsAndScores.enumerated() { // 학생 제외
        if index >= 1 {
            totalScore[i] += scores
           // print("total score: \(totalScore)")
        }
    }
    
    // 평균 계산 및 평균을 넘는 사람을 알아내고 최종 결과를 도출
    averageOfScores = totalScore[i] / numberOfStudents[i] // 각 케이스별 평균 점수를 계산

    for (x, score) in numberOfStudentsAndScores.enumerated() { // 평균보다 넘는 사람을 알아내기
        if x >= 1 {
            if score > averageOfScores {
                numberOverAverage += 1
            }
        }
    }
    
    // 최종적으로 평균을 넘는 사람이 차지하는 비율을 알아냄
    finalResult[i] = (Double(numberOverAverage) / numberOfStudents[i]) * 100
    numberOverAverage = 0

}

for i in finalResult {
    print("\(String(format: "%.3f", i))%")
}



