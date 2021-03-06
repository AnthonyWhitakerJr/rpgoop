//
//  Enemy.swift
//  rpgoop
//
//  Created by Anthony Whitaker on 7/14/16.
//  Copyright © 2016 Anthony Whitaker. All rights reserved.
//

import Foundation

class Enemy: Character {
    
    var loot: [String] {
        return ["Rusty Dagger", "Cracked Buckler"]
    }
    
    var type: String {
        return "Grunt"
    }
    
    private var _imageName: String
    
    var imageName: String {
        return _imageName
    }
    
    init(startingHp: Int, attackPower: Int, imageName: String) {
        _imageName = imageName
        super.init(startingHp: startingHp, attackPower: attackPower)
    }
    
    func dropLoot() -> String? {
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        }
        
        return nil;
    }
}