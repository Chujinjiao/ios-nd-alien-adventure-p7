//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
//enum UDItemRarity: Int {
//    case common = 0, uncommon, rare, legendary
//}

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        var rarityDic = [UDItemRarity.common: 0, UDItemRarity.legendary: 0, UDItemRarity.rare: 0, UDItemRarity.uncommon: 0]
        
        for item in inventory {
//            let rarity = item.rarity
//            switch rarity {
//            case .common:
//                rarityDic[UDItemRarity.common] =  rarityDic[UDItemRarity.common]! + 1
//            case .legendary:
//                rarityDic[UDItemRarity.legendary] = rarityDic[UDItemRarity.legendary]! + 1
//            case .rare:
//                rarityDic[UDItemRarity.rare] = rarityDic[UDItemRarity.rare]! + 1
//            case .uncommon:
//                rarityDic[UDItemRarity.uncommon] = rarityDic[UDItemRarity.uncommon]! + 1
//            }
            rarityDic[item.rarity] = rarityDic[item.rarity]! + 1
        }
        
        return rarityDic
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"
