//
//  main.swift
//  2480 주사위 세개
//
//  Created by YEHROEI HO on 2022/02/16.
//

import Foundation

var dice = readLine()!.components(separatedBy: " ").map{ Int($0)! }

if (dice[0] == dice[1]) && (dice[1] == dice[2]) {
    print(dice[0] * 1_000 + 10_000)
} else if dice[0] == dice[1] || dice[0] == dice[2] || dice[1] == dice[2] {
    dice.sort()
    print(dice[1] * 100 + 1_000)
} else {
    dice.sort()
    print(dice[2] * 100)
}
