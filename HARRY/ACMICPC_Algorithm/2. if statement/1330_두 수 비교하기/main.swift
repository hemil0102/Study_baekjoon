//
//  main.swift
//  1330_두 수 비교하기
//
//  Created by YEHROEI HO on 2022/02/16.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }

if input[0] < input[1] {
    print("<")
} else if input[0] > input[1] {
    print(">")
} else {
    print("==")
}
