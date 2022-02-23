//
//  main.swift
//  Q10809, 알파벳 찾기
//
//  Created by Walter J on 2022/02/23.
//

import Foundation

var resultArr = Array(repeating: -1, count: 26)
var alphabetArr:[Character] = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
if let alphabet = readLine() {
    for idx in 0...alphabet.count-1 {
        let alpha1 = alphabet[idx]
        
        for (jdx, alpha2) in alphabetArr.enumerated() {
            if alpha1 == alpha2 && (resultArr[jdx] == -1) {
                resultArr[jdx] = idx
            }
        }
    }
    
    for result in resultArr {
        print(result, terminator: " ")
    }
}

extension String {
    subscript(_ index: Int) -> Character {
        return self[self.index(self.startIndex, offsetBy: index)]
    }
}
