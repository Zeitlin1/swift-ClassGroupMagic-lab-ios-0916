//
//  PizzaDeliveryService.swift
//  Classes project
//
//  Created by Anthony on 9/28/16.
//  Copyright © 2016 Anthony. All rights reserved.
//

import Foundation

class PizzaDeliveryService {
    
    var location: Coordinate
    var pizzasAvailable: Int

    init(location: Coordinate){
        self.location = location
        pizzasAvailable = 10
    }

    func isInRange(destination: Coordinate) -> Bool{
        if destination.distanceTo(self.location) < 5000 {
            return true
        } else {
            return false
        }
    }
 
    func deliverPizzaTo(destination: Coordinate) -> Bool{
        if destination.distanceTo(self.location) < 5000 {
            pizzasAvailable -= 1
            return true
        } else if pizzasAvailable == 0 {
            return false
        } else {
            return false
    }
    
}
}


//

