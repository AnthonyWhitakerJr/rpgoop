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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onChestButtonPressed(sender: UIButton) {
    }

}

