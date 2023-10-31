//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceViewImage1: UIImageView!
    @IBOutlet weak var diceViewImage2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let diceOneImage = UIImage(imageLiteralResourceName: "DiceOne")
        let diceTwoImage = UIImage(imageLiteralResourceName: "DiceTwo")
        let diceThreeImage = UIImage(imageLiteralResourceName: "DiceThree")
        let diceFourImage = UIImage(imageLiteralResourceName: "DiceFour")
        let diceFiveImage = UIImage(imageLiteralResourceName: "DiceFive")
        let diceSixImage = UIImage(imageLiteralResourceName: "DiceSix")
        
        let diceImagesArray = [diceOneImage, diceTwoImage, diceThreeImage, diceFourImage, diceFiveImage, diceSixImage]
        
        let arrayCount = diceImagesArray.count;
        
        diceViewImage1.image = diceImagesArray[Int.random(in: 1..<arrayCount)]
        diceViewImage2.image = diceImagesArray[Int.random(in: 1..<arrayCount)]
    }
}

