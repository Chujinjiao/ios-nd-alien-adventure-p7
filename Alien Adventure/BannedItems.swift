//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        var bannedItemID = [Int]()
        if let dataUrl = Bundle.main.url(forResource: dataFile, withExtension: "plist") {
            let itemArray = NSArray(contentsOf: dataUrl) as! [[String: Any]]
            for item in itemArray {
                if let historicalData = item["HistoricalData"] as? [String: AnyObject], let name = item["Name"] as? String, let itemID = item["ItemID"] as? Int {
                    if let age = historicalData["CarbonAge"] as? Int, age < 30, name.lowercased().contains("laser") {
                        bannedItemID.append(itemID)
                    }
                }
            }
        }
        return bannedItemID
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"
