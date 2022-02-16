//
//  main.swift
//  2439 별 찍기-2
//
//  Created by YEHROEI HO on 2022/02/16.
//

import Foundation

let caseNumber = Int(readLine()!)!
var space = Array(repeating:" ", count:caseNumber)
var stars: String = ""

for index in 0...caseNumber-1 {
    space[caseNumber - 1 - index] = "*"
    stars = space.joined()
    print(stars)
}
