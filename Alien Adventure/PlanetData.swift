//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        var planetName = ""
        
        if let planetDataUrl = Bundle.main.url(forResource: dataFile, withExtension: "json") {
            let rawPlanetData = try! Data(contentsOf: planetDataUrl)
            let planetData = try! JSONSerialization.jsonObject(with: rawPlanetData, options: JSONSerialization.ReadingOptions()) as! [[String: Any]]
            
            var points = 0
            for planet in planetData {
                if let name = planet["Name"] as? String,
                    let common = planet["CommonItemsDetected"] as? Int,
                    let uncommon = planet["UncommonItemsDetected"] as? Int,
                    let rare = planet["RareItemsDetected"] as? Int,
                    let legendary = planet["LegendaryItemsDetected"] as? Int {
                    let sum = common + uncommon * 2 + rare * 3 + legendary * 4
                    if sum > points {
                        points = sum
                        planetName = name
                    }
                }
            }
        }
        return planetName
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"
