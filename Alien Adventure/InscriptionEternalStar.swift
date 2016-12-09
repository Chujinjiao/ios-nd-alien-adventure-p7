//
//  InscriptionEternalStar.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
// “THE ETERNAL STAR”

extension Hero {
    
    func inscriptionEternalStar(inventory: [UDItem]) -> UDItem? {
        var tmp: UDItem?
        for item in inventory {
            if let inscription = item.inscription {
                if inscription.contains("THE ETERNAL STAR") {
                    tmp = item
                }
            }
        }
        return tmp
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 3"
