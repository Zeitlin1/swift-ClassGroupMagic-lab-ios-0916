//
//  Tiger.swift
//  Classes project
//
//  Created by Anthony on 9/28/16.
//  Copyright © 2016 Anthony. All rights reserved.
//

import Foundation

class Tiger{
    
    var name: String
    var isHungry: Bool
    
    init(name: String, isHungry: Bool) {
        self.name = name
        self.isHungry = true
    }
    
    func eat(){
        isHungry = false
    }
}

