//
//  Kimara.swift
//  rpgoop
//
//  Created by Anthony Whitaker on 7/14/16.
//  Copyright © 2016 Anthony Whitaker. All rights reserved.
//

import Foundation

class Kimara: Enemy {
    
    let IMMUNNITY_MAX = 15
    
    override var loot: [String] {
        return ["Tough Hide", "Kimara Venom", "Rare Trident"]
    }
    
    override var type: String {
        return "Kimara"
    }
    
    override func attemptAttack(attackPower: Int) -> Bool {
        if attackPower >= IMMUNNITY_MAX {
            return super.attemptAttack(attackPower)
        }
        
        return false
    }
    
}