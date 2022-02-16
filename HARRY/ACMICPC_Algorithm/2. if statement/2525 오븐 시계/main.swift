//
//  main.swift
//  2525 오븐 시계
//
//  Created by YEHROEI HO on 2022/02/16.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let input2 = Int(readLine()!)!

let minuteUnit = input[0] * 60 + input[1]
let adjustedMinuteUnit = minuteUnit + input2
let changedTime = adjustedMinuteUnit / 60
let changedMinute = adjustedMinuteUnit % 60
var changedTime2 = 0
var changedMinute2 = 0
var adjustedMinuteUnit2 = 0

if adjustedMinuteUnit < 1440 {
    print("\(changedTime) \(changedMinute)")
} else if adjustedMinuteUnit >= 1440 {
    adjustedMinuteUnit2 = adjustedMinuteUnit - 1440
    changedTime2 = adjustedMinuteUnit2 / 60
    changedMinute2 = adjustedMinuteUnit2 % 60
    print("\(changedTime2) \(changedMinute2)")
}

// 1439 + 1000 = 2439
// 1439 + 1 = 1440 = 24 00
// 1440 ~ 2440 -> - 1440






