//
//  main.swift
//  Q4344
//
//  Created by Walter J on 2022/02/18.
//

import Foundation

let count = Int(readLine() ?? "")
var score = [Float]()
for _ in 0..<(count ?? 0) {
    score = readLine()!.split(separator: " ").map { Float(String($0)) ?? 0.0 }
    let scoreFrom1 = score[1..<score.count]
    
    let average = scoreFrom1.reduce(into: 0, { $0 += $1 }) / score[0]
    var countThatOverAverage = 0
    
    for overCount in score {
        if overCount > average {
            countThatOverAverage += 1
        }
    }
    
    let result = Float(countThatOverAverage) / score[0]
    print(String(format: "%.3f", result*100) + "%")
}
