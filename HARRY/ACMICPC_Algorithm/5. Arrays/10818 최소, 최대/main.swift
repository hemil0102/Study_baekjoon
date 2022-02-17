//
//  main.swift
//  10818 최소, 최대
//
//  Created by YEHROEI HO on 2022/02/17.
//

import Foundation

let c = Int(readLine()!)!
let x = readLine()!.split(separator: " ").map { Int(String($0))! }
var max = x[0], min = x[0]

for i in x {
    if max < i {
        max = i
    } else if min > i {
        min = i
    
    }
}

print("\(min) \(max)")
