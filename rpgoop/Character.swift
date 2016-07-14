//
//  Character.swift
//  rpgoop
//
//  Created by Anthony Whitaker on 7/14/16.
//  Copyright © 2016 Anthony Whitaker. All rights reserved.
//

import Foundation

class Character {
    private var _hp: Int = 100
    private var _attackPower: Int = 10
    
    var attackPower: Int {
        get {
            return _attackPower
        }
    }
    
    var hp: Int {
        get {
            return _hp
        }
    }
    
    var isAlive: Bool {
        get {
            return hp > 0
        }
    }
    
    
    init(startingHp: Int, attackPower: Int) {
        _hp = startingHp
        _attackPower = attackPower
    }
    
    func  attemptAttack(attackPower: Int) -> Bool {
        self._hp -= attackPower
        
        return true
    }
    
}
