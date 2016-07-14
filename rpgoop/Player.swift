//
//  Player.swift
//  rpgoop
//
//  Created by Anthony Whitaker on 7/14/16.
//  Copyright © 2016 Anthony Whitaker. All rights reserved.
//

import Foundation

class Player: Character {
    private var _name = "Player"
    
    var name: String {
        get {
            return _name
        }
    }
    
    private var _inventory = [String]()
    
    var inventory: [String] {
        return _inventory
    }
    
    convenience init(name: String, startingHp: Int, attackPower: Int) {
        self.init(startingHp: startingHp, attackPower: attackPower)
        _name = name
    }
    
    func addItemToInventory(item: String) {
        _inventory.append(item)
    }
}