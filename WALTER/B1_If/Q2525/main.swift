//
//  main.swift
//  B1_If
//
//  Created by Walter J on 2022/02/15.
//

import Foundation

let currentTime = readLine()!.components(separatedBy: " ").map { Int($0)! }
let cookingTime = Int(readLine()!)

let hour = 24
let minute = 60

let plusTime = currentTime[1] + cookingTime!
var finalHour = currentTime[0]
var finalMinute = plusTime

if plusTime >= minute {
    finalHour += plusTime / minute      //60분으로 나눈 시간, 최종 시
    finalMinute = plusTime % minute    //60분으로 나눈 나머지, 최종 분
    
    if finalHour >= hour {
        finalHour = (plusTime / minute) - 1
    }
    
//    if finalHour >= hour {
//        finalHour -= hour
//    }
}

print("\(finalHour) \(finalMinute)")
