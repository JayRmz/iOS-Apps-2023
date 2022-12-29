//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let dices = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]

    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImage1.image = UIImage(named: String(dices[Int.random(in: 0...5)]))
        diceImage2.image = UIImage(named: String(dices[Int.random(in: 0...5)]))
    }


    @IBAction func rollDice(_ sender: UIButton) {
        diceImage1.image = UIImage(named: String(dices[Int.random(in: 0...5)]))
        diceImage2.image = UIImage(named: String(dices[Int.random(in: 0...5)]))
    }
}

