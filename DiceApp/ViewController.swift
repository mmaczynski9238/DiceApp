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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    var numbers = [5,1,6,2,4,3,1,3,2,6,4,5]
    
    
    
    
    @IBAction func RollButton(sender: UIButton) {
        
        
        
        let randomIndex = Int(arc4random_uniform(UInt32(numbers.count)))
        let randomNumber = numbers[randomIndex]

        
        DiceLabel.text = "\(randomNumber)"

        
    }

}