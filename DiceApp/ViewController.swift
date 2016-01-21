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
    
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var diceViewTap: UIView!
    /***********************************************/
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        self.initializeGestureRecognizer()
        
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeDown.direction = UISwipeGestureRecognizerDirection.Down
        self.view.addGestureRecognizer(swipeDown)
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeUp.direction = UISwipeGestureRecognizerDirection.Up
        self.view.addGestureRecognizer(swipeUp)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        
        self.view.addGestureRecognizer(swipeLeft)
        
    }
    /***********************************************/
    /***********************************************/
    
    
    @IBAction func instructionsButton(sender: UIButton) {
        
        let alertController = UIAlertController(title: "Instructions", message: "How to Roll the Dice: \n \n Swipe Left, Right, Up, or Down \n Tap the Dice \n Tap the Button", preferredStyle: .Alert)
        
        /*let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            // ...
        }
        alertController.addAction(cancelAction)*/
        
        let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
            // ...
        }
        alertController.addAction(OKAction)
        
        self.presentViewController(alertController, animated: true) {
            // ...
        }
    }
    
    
    /***********************************************/
    
    var numbers = [5,1,6,2,4,3,1,3,2,6,4,5]
    
    /***********************************************/
    
    
    func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.Right:
                let randomIndex = Int(arc4random_uniform(UInt32(numbers.count)))
                let randomNumber = numbers[randomIndex]
                DiceLabel.text = "\(randomNumber)"
                if randomNumber == 1
                {
                    diceImage.image = UIImage(named: "dice1new")
                }
                else if randomNumber == 2
                {
                    diceImage.image = UIImage(named: "dice2new")
                }
                else if randomNumber == 3
                {
                    diceImage.image = UIImage(named: "dice3new")
                }
                else if randomNumber == 4
                {
                    diceImage.image = UIImage(named: "dice4new")
                }
                else if randomNumber == 5
                {
                    diceImage.image = UIImage(named: "dice5new")
                }
                else if randomNumber == 6
                {
                    diceImage.image = UIImage(named: "dice6new")
                }
                /***********************************************/
            case UISwipeGestureRecognizerDirection.Down:
                let randomIndex = Int(arc4random_uniform(UInt32(numbers.count)))
                let randomNumber = numbers[randomIndex]
                DiceLabel.text = "\(randomNumber)"
                if randomNumber == 1
                {
                    diceImage.image = UIImage(named: "dice1new")
                }
                else if randomNumber == 2
                {
                    diceImage.image = UIImage(named: "dice2new")
                }
                else if randomNumber == 3
                {
                    diceImage.image = UIImage(named: "dice3new")
                }
                else if randomNumber == 4
                {
                    diceImage.image = UIImage(named: "dice4new")
                }
                else if randomNumber == 5
                {
                    diceImage.image = UIImage(named: "dice5new")
                }
                else if randomNumber == 6
                {
                    diceImage.image = UIImage(named: "dice6new")
                }
                /***********************************************/
            case UISwipeGestureRecognizerDirection.Left:
                var randomIndex = Int(arc4random_uniform(UInt32(numbers.count)))
                var randomNumber = numbers[randomIndex]
                DiceLabel.text = "\(randomNumber)"
                if randomNumber == 1
                {
                    diceImage.image = UIImage(named: "dice1new")
                }
                else if randomNumber == 2
                {
                    diceImage.image = UIImage(named: "dice2new")
                }
                else if randomNumber == 3
                {
                    diceImage.image = UIImage(named: "dice3new")
                }
                else if randomNumber == 4
                {
                    diceImage.image = UIImage(named: "dice4new")
                }
                else if randomNumber == 5
                {
                    diceImage.image = UIImage(named: "dice5new")
                }
                else if randomNumber == 6
                {
                    diceImage.image = UIImage(named: "dice6new")
                }
                /***********************************************/
            case UISwipeGestureRecognizerDirection.Up:
                let randomIndex = Int(arc4random_uniform(UInt32(numbers.count)))
                let randomNumber = numbers[randomIndex]
                DiceLabel.text = "\(randomNumber)"
                if randomNumber == 1
                {
                    diceImage.image = UIImage(named: "dice1new")
                }
                else if randomNumber == 2
                {
                    diceImage.image = UIImage(named: "dice2new")
                }
                else if randomNumber == 3
                {
                    diceImage.image = UIImage(named: "dice3new")
                }
                else if randomNumber == 4
                {
                    diceImage.image = UIImage(named: "dice4new")
                }
                else if randomNumber == 5
                {
                    diceImage.image = UIImage(named: "dice5new")
                }
                else if randomNumber == 6
                {
                    diceImage.image = UIImage(named: "dice6new")
                }
                /***********************************************/
            default:
                break
            }
        }
    }
    
    /***********************************************/

    func initializeGestureRecognizer()
    {
    var tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: Selector("recognizeTapGesture:"))
    myView.addGestureRecognizer(tapGesture)
    }
    /***********************************************/

    
    func recognizeTapGesture(sender: UIGestureRecognizer)
    {
        let randomIndex = Int(arc4random_uniform(UInt32(numbers.count)))
        let randomNumber = numbers[randomIndex]
        DiceLabel.text = "\(randomNumber)"
        if randomNumber == 1
        {
            diceImage.image = UIImage(named: "dice1new")
        }
        else if randomNumber == 2
        {
            diceImage.image = UIImage(named: "dice2new")
        }
        else if randomNumber == 3
        {
            diceImage.image = UIImage(named: "dice3new")
        }
        else if randomNumber == 4
        {
            diceImage.image = UIImage(named: "dice4new")
        }
        else if randomNumber == 5
        {
            diceImage.image = UIImage(named: "dice5new")
        }
        else if randomNumber == 6
        {
            diceImage.image = UIImage(named: "dice6new")
        }
    }
    
    /***********************************************/
    /***********************************************/

    
    
    @IBAction func RollButton(sender: UIButton) {
        let randomIndex = Int(arc4random_uniform(UInt32(numbers.count)))
        let randomNumber = numbers[randomIndex]
        DiceLabel.text = "\(randomNumber)"
        if randomNumber == 1
        {
            diceImage.image = UIImage(named: "dice1new")
        }
        else if randomNumber == 2
        {
            diceImage.image = UIImage(named: "dice2new")
        }
        else if randomNumber == 3
        {
            diceImage.image = UIImage(named: "dice3new")
        }
        else if randomNumber == 4
        {
            diceImage.image = UIImage(named: "dice4new")
        }
        else if randomNumber == 5
        {
            diceImage.image = UIImage(named: "dice5new")
        }
        else if randomNumber == 6
        {
            diceImage.image = UIImage(named: "dice6new")
        }
        
    }
    /***********************************************/

}