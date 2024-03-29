//
//  ViewController.swift
//  Dicee App
//
//  Created by Hiba Abdulla on 3/24/24.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceeImage1: UIImageView!
    
    @IBOutlet weak var diceeImage2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImage()
    }
    @IBAction func rollButton(_ sender: UIButton) {
        
       updateDiceImage()
    }
    
    func updateDiceImage() {
        
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceeImage1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceeImage2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImage()

    }
}


