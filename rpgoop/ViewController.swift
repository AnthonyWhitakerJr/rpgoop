//
//  ViewController.swift
//  rpgoop
//
//  Created by Anthony Whitaker on 7/14/16.
//  Copyright © 2016 Anthony Whitaker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playerHpLabel: UILabel!
    @IBOutlet weak var enemyHpLabel: UILabel!
    @IBOutlet weak var enemyImage: UIImageView!
    @IBOutlet weak var printLabel: UILabel!
    @IBOutlet weak var chestButton: UIButton!
    @IBOutlet weak var attackButton: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    var chestContents: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player(name: "Ace", startingHp: 110, attackPower: 20)
        
        playerHpLabel.text = "\(player.hp) HP"
        
        generateRandomEnemy()
    }
    
    func generateRandomEnemy() {
        let rand = Int(arc4random_uniform(2))
        
        switch rand {
        case 0:
            enemy = Kimara(startingHp: 50, attackPower: 12)
        case 1:
            enemy = DevilWizard(startingHp: 60, attackPower: 15)
        default:
            break
        }
        
        enemyImage.image = UIImage(named: enemy.imageName)
        enemyImage.hidden = false
        
        enemyHpLabel.text = "\(enemy.hp) HP"
        
        printLabel.text = "A wild \(enemy.type) appeared!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onChestButtonPressed(sender: UIButton) {
        chestButton.hidden = true
        player.addItemToInventory(chestContents!)
        printLabel.text = "\(player.name) found \(chestContents!)"
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: #selector(ViewController.generateRandomEnemy), userInfo: nil, repeats: false)
    }

    @IBAction func onAttackButtonPressed(sender: UIButton) {
        if enemy.attemptAttack(player.attackPower) {
            printLabel.text = ("Attacked \(enemy.type) for \(player.attackPower) damage")
            enemyHpLabel.text = "\(enemy.hp) HP"
        } else {
            printLabel.text = "Attack was unsuccessful!"
        }
        
        if let loot = enemy.dropLoot() {
            chestContents = loot
            chestButton.hidden = false
        }
        
        if !enemy.isAlive {
            enemyHpLabel.text = ""
            printLabel.text = "Killed \(enemy.type)"
            enemyImage.hidden = true
        }
    }
}

