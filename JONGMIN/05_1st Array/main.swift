//
//  main.swift
//  05_1st Array
//
//  Created by JONGMIN Youn on 2022/02/16.
//

import Foundation

//#1

let number = Int(readLine()!)!
let inputArr = readLine()!.split(separator: " ").map{ Int($0)!}

var maxN = inputArr[0]
var minN = inputArr[0]

for i in 0..<number {
    if (maxN < inputArr[i]) {
        maxN = inputArr[i]
    } else {
        continue;
    }
}

for i in 0..<number {
    if (minN > inputArr[i]) {
        minN = inputArr[i]
    } else {
        continue;
    }
}

print("\(minN) \(maxN)")

//#2

var numbers: [Int] = []

for _ in 1...9 {
    numbers.append(Int(readLine()!)!)
}

let maximum = numbers.max()!
let indexOfMaximum = numbers.firstIndex(of: maximum)! + 1
print("\(maximum)" + "\n" + "\(indexOfMaximum)")

//#3
var inputArr = [Int]()
var result = 1
var count = 0

for _ in 1...3 {
    inputArr.append(Int(readLine()!)!)
}

for i in 0..<inputArr.count {
    result *= inputArr[i]
}

let toString = String(result)

for i in 0...9 {
    for char in toString {
        if (char.wholeNumberValue == i) {
            count += 1
        }
    }
    print(count)
    count = 0
}

//#4
var inputArr = [Int]()

for _ in 1...10 {
    inputArr.append(Int(readLine()!)!)
}

let resultArr = Set(inputArr.map{ $0%42 })

print(resultArr.count)

//#5

let number = Double(readLine()!)!
let score = readLine()!.split(separator: " ").map{ Double($0)! }

let maxScore = score.max()!
let minScore = score.min()!


let meanScore = score.reduce(0, +) * 100 / (maxScore * number)

print(meanScore)

//#6

let inputNum = Int(readLine()!)!
var inputArr = [String]()
  for _ in 1...inputNum {
      inputArr.append(readLine()!)
  }


var totalScore = 0
var point = 0

for i in 0..<inputNum {
    for char in inputArr[i] {
        if (char == "O") {
            point += 1
            totalScore += point
        } else {
            point = 0
        }
    }
    print(totalScore)
    totalScore = 0
    point = 0
}

//#7
let caseNum = Int(readLine()!)!
//let caseNum = 2

var caseTotalArr = [String]()
for _ in 1...caseNum {
      caseTotalArr.append(readLine()!)
}
//let caseTotalArr = ["5 50 50 70 80 100", "7 100 95 90 80 70 60 50"]

var caseArr = [Double]()
var totalScore = 0.0
var meanScore = 0.0
var count = 0.0

for i in 0..<caseNum {
    caseArr = caseTotalArr[i].split(separator: " ").map { Double($0)! }
    
    let arrNum = caseArr[0]
    for j in 1..<caseArr.count {
        totalScore += caseArr[j]
        meanScore = totalScore/arrNum
    }
    
    for j in 1..<caseArr.count {
        if (caseArr[j] > meanScore) {
            count += 1
        }
    }
    print(String(format: "%.3f%%", count/arrNum*100))
    totalScore = 0
    meanScore = 0
    count = 0
}
