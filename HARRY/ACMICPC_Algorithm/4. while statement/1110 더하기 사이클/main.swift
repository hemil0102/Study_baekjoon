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

let input = readLine()!
var underTenString: String
var eachNumber = [Character]()
var newValue: Int = Int(input)!
var eachNumberNewValue = [Character]()
var cycle = 0

if Int(input)! < 10 {
    underTenString = String(format: "%02d", Int(input)!)
    print(underTenString)
    eachNumber = Array(underTenString)
    print(eachNumber)
} else {
    eachNumber = Array(input)
    print(eachNumber)
}


repeat {
    if let intValue1 = eachNumber[0].wholeNumberValue, let intValue2 = eachNumber[1].wholeNumberValue {
        newValue = intValue1 + intValue2
        String(newValue)
        if let intNewValue1 =
        cycle += 1
    }
    
} while newValue != Int(input)!


    /*
    let number: Int = 7

            let str = String(format: "%02d", number)
            
            print(str) // 07
     */
