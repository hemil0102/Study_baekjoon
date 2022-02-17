//
//  main.swift
//  9498_시험 성적
//
//  Created by YEHROEI HO on 2022/02/16.
//

import Foundation

let input = Int(readLine()!)!

if input >= 90 && input <= 100 {
    print("A")
} else if input >= 80 && input < 90 {
    print("B")
} else if input >= 70 && input < 80 {
    print("C")
} else if input >= 60 && input < 70 {
    print("D")
} else {
    print("F")
}

