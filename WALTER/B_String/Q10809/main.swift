//
//  main.swift
//  Q10809, 알파벳 찾기
//
//  Created by Walter J on 2022/02/23.
//

import Foundation

var alphabetCountArr = Array(repeating: -1, count: 26)
var alphabetArr = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
if let alphabet = readLine() {
    
    for (idx, aValue) in alphabet.enumerated() {
        var a = alphabet[1]
        for alpha in alphabetArr {
            if a == alphabet {
                
            }
        }
    }
}

extension String {
    subscript(_ index: Int) -> Character {
        return self[self.index(self.startIndex, offsetBy: index)]
    }
}
