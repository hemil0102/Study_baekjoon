//
//  main.swift
//  10952
//
//  Created by YEHROEI HO on 2022/02/16.
//

import Foundation

var result = Array<Int>()
var input = [ 1 , 1 ]

while input[0] != 0 && input[1] != 0 {
    input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    if input[0] == 0 && input[1] == 0 {
        break
    }
    result.append(input[0] +  input[1])
}

var counter = 0

while counter < result.count {
    print(result[counter])
    counter += 1
}
