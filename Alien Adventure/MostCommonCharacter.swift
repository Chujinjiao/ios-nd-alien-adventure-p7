//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        var chars = [Character: Int]()
        for item in inventory {
            var name = item.name.lowercased()
            for char in name.characters {
                if (chars[char] == nil) {
                    chars[char] = 1
                } else {
                    chars.updateValue(chars[char]! + 1, forKey: char)
                }
            }
        }
        var largestNumber = 0
        var mostCommonChar: Character?
        for char in chars {
            if char.value > largestNumber {
                largestNumber = char.value
                mostCommonChar = char.key
            }
        }
        return mostCommonChar
    }
}
