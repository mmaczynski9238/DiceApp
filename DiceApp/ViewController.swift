//
//  ViewController.swift
//  DiceApp
//
//  Created by Michael Maczynski on 1/12/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    let myArray = [1,2,3,4,5,6]
    let tempArray = [1,2,3,4,5,6]


    
    /*func shuffleArray<T>(array: Array<T>) -> Array<T>
    {
        for var index = array.count - 1; index > 0; index--
        {
            // Random int from 0 to index-1
            var j = Int(arc4random_uniform(UInt32(index-1)))
            
            // Swap two array elements
            // Notice '&' required as swap uses 'inout' parameters
            swap(&array[index], &array[j])
        }
        return array
    }

    */
    
    func shuffleArray(array: [Int]) -> [Int] {
        
        var tempArray = array
        for index in 0...array.count - 1 {
            let randomNumber = arc4random_uniform(UInt32(myArray.count - 1))
            let randomIndex = Int(randomNumber)
            tempArray[randomIndex] = array[index]
        }
        
        return tempArray
    }
    
    
    shuffleArray(myArray)
    //shuffleArray(myArray)
    //shuffleArray(myArray)

    
    
    
    
    
    @IBAction func RollButton(sender: UIButton) {
        
        print("\tempArray")
        print("myArray")

        
    }

}