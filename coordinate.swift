//
//  coordinate.swift
//  Classes project
//
//  Created by Anthony on 9/28/16.
//  Copyright © 2016 Anthony. All rights reserved.
//

import Foundation

class Coordinate{
    
    var lat: Double
    var long: Double
    
    var isInNorthernHemisphere: Bool {
        
        if lat > 0{
            return true
        } else {
            return false
        }
    }
    
    var isInSoutherHemisphere: Bool {
        
        if lat < 0{
            return true
        } else {
            return false
        }
    }
    
    var isInWesternHemisphere: Bool {
        
        if long > 0{
            return true
        } else {
            return false
        }
    }
    
    var isInEasternHemisphere: Bool {
        
        if long < 0{
            return true
        } else {
            return false
        }
    }
    
    init(lat: Double, long: Double){
        self.lat = 54.3
        self.long = 23.4
    }
    
    
    
    func distanceTo(_ coordinate: Coordinate) -> Double {
        return acos(sin(self.lat.radians) * sin(coordinate.lat.radians) + cos(self.lat.radians) * cos(coordinate.lat.radians) * cos(self.long.radians-coordinate.long.radians)) * 6371000 / 1000
    }
}



extension Double {
    var radians: Double {
        return self * M_PI / 180
    }
}


var florida = Coordinate(lat: 25, long: 80)
var newYork = Coordinate(lat: 40, long: 74)

