//
//  main.swift
//  Q8958
//
//  Created by Walter J on 2022/02/18.
//

import Foundation

let count = Int(readLine()!)
for _ in 0..<(count ?? 0) {
    let str_ox = readLine()!
    var oCount = 1
    var result = 0
    
    for ox in str_ox {
        if ox == "O" {
            result += oCount
            oCount += 1
        } else {
            oCount = 1
        }
    }
    
    print(result)
}
