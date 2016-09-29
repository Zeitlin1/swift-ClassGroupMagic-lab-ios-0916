//
//  Person.swift
//  PeopleAndPizza
//
//  Created by Anthony on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Person {
    
    var firstName: String
    var lastName: String
    var home: Coordinate
    var isHungry: Bool
    
    init(firstName: String, lastName: String, home: Coordinate) {
        self.firstName = firstName
        self.lastName = lastName
        self.home = home
        self.isHungry = true
        
    }
    
    func eatPizzaFrom(service: PizzaDeliveryService ) -> Bool {
        if self.isHungry == true && service.isInRange(destination: home) == true {
            self.isHungry = false
            return true
        } else {
            return false
        }
    }
    
}
