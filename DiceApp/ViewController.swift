//
//  ViewController.swift
//  DiceApp
//
//  Created by Michael Maczynski on 1/12/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DiceLabel: UILabel!
    
    @IBOutlet weak var diceImage: UIImageView!
    
    @IBOutlet weak var diceViewTap: UIView!
    /***********************************************/
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    /***********************************************/
    
    var numbers = [5,1,6,2,4,3,1,3,2,6,4,5]
    
    /***********************************************/
    
    
   
        
    
    
    @IBAction func RollButton(sender: UIButton) {
        
        
        
        let randomIndex = Int(arc4random_uniform(UInt32(numbers.count)))
        let randomNumber = numbers[randomIndex]

        
        DiceLabel.text = "\(randomNumber)"
        
        
        if randomNumber == 1
        {
            
            
            diceImage.image = UIImage(named: "dice1")
            
        }
        else if randomNumber == 2
        {
            
            
            diceImage.image = UIImage(named: "dice2")
            
        }
        else if randomNumber == 3
        {
            
            
            diceImage.image = UIImage(named: "dice3")
            
        }
        else if randomNumber == 4
        {
            
            
            diceImage.image = UIImage(named: "dice4")
            
        }
        else if randomNumber == 5
        {
            
            
            diceImage.image = UIImage(named: "dice5")
            
        }
        else if randomNumber == 6
        {
            
            
            diceImage.image = UIImage(named: "dice6")
            
        }
        
        
    }

}