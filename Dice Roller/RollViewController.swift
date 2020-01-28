//
//  RollViewController.swift
//  Dice Roller
//
//  Created by Shyam Patel  on 6/7/19.
//  Copyright © 2019 Shyam Patel . All rights reserved.
//

import UIKit

class RollViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    func randomValue() -> Int
    {
        let random = Int(1 + arc4random() % 6)
        return random
    }
    
    @IBAction func rollDice()
    {
        performSegue(withIdentifier: "rollDice", sender: self)
        
        
        
//        var controller = DiceViewController()
//
//        controller = self.storyboard?.instantiateViewController(withIdentifier: "DiceViewController") as! DiceViewController
//
//        controller.firstValue = randomValue()
//        controller.secondValue = randomValue()
//
//        present(controller, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "rollDice"
        {
            let controller = segue.destination as! DiceViewController
            controller.firstValue = randomValue()
            controller.secondValue = randomValue()
        }
    }
}
