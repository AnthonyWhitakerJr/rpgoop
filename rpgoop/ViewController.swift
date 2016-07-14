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
    @IBOutlet weak var printLabel: UIImageView!
    @IBOutlet weak var chestButton: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player(name: "Ace", startingHp: 110, attackPower: 20)
        
        playerHpLabel.text = "\(player.hp) HP"
        
        generateRandomEnemy()
        enemyHpLabel.text = "\(enemy.hp) HP"
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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onChestButtonPressed(sender: UIButton) {
    }

}

