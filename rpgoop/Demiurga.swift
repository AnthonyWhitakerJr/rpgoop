//
//  Demiurga.swift
//  rpgoop
//
//  Created by Anthony Whitaker on 7/14/16.
//  Copyright © 2016 Anthony Whitaker. All rights reserved.
//

import Foundation
class Demiurga : Enemy {
    override var loot: [String] {
        return ["Phantom Pearl", "Vanishing Cloak", "Perplexed Sheild"]
    }
    
    override var type: String {
        return "Demiurga"
    }
    
    init(startingHp: Int, attackPower: Int) {
        super.init(startingHp: startingHp, attackPower: attackPower, imageName: "enem3")
    }
}