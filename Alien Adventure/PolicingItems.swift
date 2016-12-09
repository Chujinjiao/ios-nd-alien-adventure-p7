//
//  PolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func policingItems(inventory: [UDItem], policingFilter: (UDItem) throws -> Void) -> [UDPolicingError:Int] {
        var udPolicingErrorDic = [UDPolicingError.nameContainsLaser: 0, UDPolicingError.itemFromCunia: 0, UDPolicingError.valueLessThan10: 0]
        
        for item in inventory {
            do {
                try policingFilter(item)
            } catch UDPolicingError.nameContainsLaser {
                udPolicingErrorDic[UDPolicingError.nameContainsLaser] = udPolicingErrorDic[UDPolicingError.nameContainsLaser]! + 1
            } catch UDPolicingError.itemFromCunia {
                udPolicingErrorDic[UDPolicingError.itemFromCunia] = udPolicingErrorDic[UDPolicingError.itemFromCunia]! + 1
            } catch UDPolicingError.valueLessThan10 {
                udPolicingErrorDic[UDPolicingError.valueLessThan10] = udPolicingErrorDic[UDPolicingError.valueLessThan10]! + 1
            } catch {
                print("other errors")
            }
        }
        
        return udPolicingErrorDic
    }    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"

