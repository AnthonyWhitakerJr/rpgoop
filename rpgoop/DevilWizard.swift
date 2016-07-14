//
//  DevilWizard.swift
//  rpgoop
//
//  Created by Anthony Whitaker on 7/14/16.
//  Copyright © 2016 Anthony Whitaker. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    override var loot: [String] {
        return ["Magic Wand", "Dark Amulet", "Salted Pork"]
    }
    
    override var type: String {
        return "Devil Wizard"
    }
}