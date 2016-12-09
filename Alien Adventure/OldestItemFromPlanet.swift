//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        var oldestItem: UDItem?
        
        var largestAge = 0
        for item in inventory {
            let historicalDataDic = item.historicalData
            if let planetOfOrigin = historicalDataDic["PlanetOfOrigin"] as? String, let age = historicalDataDic["CarbonAge"] as? Int{
                if planetOfOrigin == planet && age > largestAge{
                    largestAge = age
                    oldestItem = item
                }
            }
        }
        return oldestItem
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"
