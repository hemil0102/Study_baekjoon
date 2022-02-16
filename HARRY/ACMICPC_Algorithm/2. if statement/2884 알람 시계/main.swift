//
//  main.swift
//  2884 알람 시계
//
//  Created by YEHROEI HO on 2022/02/16.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let minuteUnit = input[0] * 60 + input[1]
let alarmTimer = 45
let adjustedMinuteUnit = minuteUnit - alarmTimer
let changedTime = adjustedMinuteUnit / 60
let changedMinute = adjustedMinuteUnit % 60
var adjustedMinuteUnit2 = 0
var changedTime2 = 0
var changedMinute2 = 0

if adjustedMinuteUnit > alarmTimer   {
    print("\(changedTime) \(changedMinute)")
} else if adjustedMinuteUnit >= 0 && adjustedMinuteUnit <= alarmTimer {
    changedMinute2 = adjustedMinuteUnit
    print("\(changedTime2) \(changedMinute2)")
} else {
    adjustedMinuteUnit2 = adjustedMinuteUnit + 1440
    changedTime2 = adjustedMinuteUnit2 / 60
    changedMinute2 = adjustedMinuteUnit2 % 60
    print("\(changedTime2) \(changedMinute2)")
}

