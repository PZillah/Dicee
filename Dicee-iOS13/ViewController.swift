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
    
    override func viewDidLoad() { //code block inside curly braces
        super.viewDidLoad()
        // WHO          WHAT    VALUE
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")  //#imageliteral(
        //diceImageView1.alpha = 0.5 // half transparency
        diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
    }

// interface builder action triggered when user touch up inside the UI element
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Button got tapped.")
        
        diceImageView1.image = #imageLiteral(resourceName: "DiceFour")
        diceImageView2.image = #imageLiteral(resourceName: "DiceFour")
    }
}

