//
//  main.swift
//  14681 사분면 고르기
//
//  Created by YEHROEI HO on 2022/02/16.
//

import Foundation

let x = Int(readLine()!)!
let y = Int(readLine()!)!

if x > 0 && y > 0 {
    print("1")
} else if x < 0 && y > 0 {
    print("2")
} else if x < 0 && y < 0 {
    print("3")
} else {
    print("4")
}

