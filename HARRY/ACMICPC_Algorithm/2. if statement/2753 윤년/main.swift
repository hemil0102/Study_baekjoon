//
//  main.swift
//  2753 윤년
//
//  Created by YEHROEI HO on 2022/02/16.
//

import Foundation

let input = Int(readLine()!)!

if input%4 == 0 && (input%100 != 0 || input%400 == 0) {
    print("1")
} else {
    print("0")
}
