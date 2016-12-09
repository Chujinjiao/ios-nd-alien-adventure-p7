//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1: String, s2: String, shuffle: String) -> Bool {
        /*
        var s1Chars = Array(s1.characters)
        var s2Chars = Array(s2.characters)
        let shufChars = Array(shuffle.characters)
        
        if shufChars.count != (s1Chars.count + s2Chars.count) {
            return false
        }
        
        for oneChar in shufChars {
            if s1Chars.count > 0 && oneChar == s1Chars[0] {
                s1Chars.remove(at: 0)
            } else if s2Chars.count > 0 && oneChar == s2Chars[0] {
                s2Chars.remove(at: 0)
            } else {
                return false
            }
        }
        return true
        */
        
        var shuffleInOrderOrNot = false
        if s1.isEmpty && s2.isEmpty && shuffle.isEmpty {
            shuffleInOrderOrNot = true
        } else if (s1 + s2).characters.count != shuffle.characters.count {
            shuffleInOrderOrNot = false
        } else {
            var s1_tmp = ""
            var s2_tmp = ""
            for index in shuffle.characters.indices {
                let tmp = String(shuffle[index])
                if s1.contains(tmp) {
                    s1_tmp.append(tmp)
                } else if s2.contains(tmp) {
                    s2_tmp.append(tmp)
                } else {
                    shuffleInOrderOrNot = false
                }
            }
            if s1_tmp == s1 && s2_tmp == s2 {
                shuffleInOrderOrNot = true
            }
        }
        
        return shuffleInOrderOrNot
    }
}
