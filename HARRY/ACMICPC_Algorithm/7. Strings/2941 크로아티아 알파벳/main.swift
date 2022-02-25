//
//  main.swift
//  2941 크로아티아 알파벳
//
//  Created by YEHROEI HO on 2022/02/26.
//

import Foundation

var input = readLine()!
let croatiaAlphabet = [ "c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z=" ]

for i in croatiaAlphabet {
    if input.contains(i) {
        //print("1. \(input)")
        //print("2. \(i)")
        input = input.replacingOccurrences(of: "\(i)", with: "1")
        //print("3. \(input)")
    }
}

let inputArray = Array(input)
//print("4. \(inputArray)")
print(inputArray.count)
