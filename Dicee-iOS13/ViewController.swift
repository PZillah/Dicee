//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // IBOutlet allows me to reference a UI element
    // press Control and click on element to drag to code editor
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
//    var leftDiceNumber = 1 //var is a variable that can be varied
//    var rightDiceNumber = 5

    //we no longer have a need for anything to load when app opens so we don't need this block of code
//    override func viewDidLoad() { //code block inside curly braces
//        super.viewDidLoad()
//        // WHO          WHAT    VALUE
//        //diceImageView1.image = #imageLiteral(resourceName: "DiceSix")  //#imageliteral(
//        //diceImageView1.alpha = 0.5 // half transparency
//        //diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
//    }

// interface builder action triggered when user touch up inside the UI element
    @IBAction func rollButtonPressed(_ sender: UIButton) {
//        print("Button got tapped.")
//        diceImageView1.image = #imageLiteral(resourceName: "DiceFour")
//        diceImageView2.image = #imageLiteral(resourceName: "DiceFour")
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")] // let is a constant variable that doesn't change
        diceImageView1.image = diceArray.randomElement() //this will look thru the array and give us a random element
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        //leftDiceNumber += 1 // same as leftDiceNumber + 1
        //rightDiceNumber -= 1 // same as rightDiceNumber - 1
        
        //to randomize dice images
        //Int.random(in: 0...5) tells the computer to select a random whole number between the range 0 and 5
        
    }
}

