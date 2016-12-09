//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        var checkResult = true
        var badgesResults = true
        
        for request in requestTypes {
            
            badgesResults = false
            for badge in badges {
                if badge.requestType == request {
                    badgesResults = true
                    break
                }
            }
            checkResult = checkResult && badgesResults
        }
        return checkResult
    }
    
}
