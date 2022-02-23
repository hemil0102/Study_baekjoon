//
//  main.swift
//  1546 평균
//
//  Created by YEHROEI HO on 2022/02/18.
//

import Foundation

let classes = Int(readLine()!)!
var scores = readLine()!.split(separator: " ").map{ Int(String($0))! }
var modifiedValue = Array(repeating: 0.0, count: classes)
var averageValue = 0.0

for i in 0..<classes {
    modifiedValue[i] = ( Double(scores[i]) / Double(scores.max()!) ) * 100
    averageValue += modifiedValue[i]
    // print(modifiedValue[i])
}
print(averageValue/Double(classes))
