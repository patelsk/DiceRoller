//
//  ViewController.swift
//  Dice Roller
//
//  Created by Shyam Patel  on 6/7/19.
//  Copyright © 2019 Shyam Patel . All rights reserved.
//

import UIKit

class DiceViewController: UIViewController
{

    var firstValue: Int?
    var secondValue: Int?
    
    @IBOutlet weak var firstDie: UIImageView!
    @IBOutlet weak var secondDie: UIImageView!
    
    override func viewWillAppear(_ animated: Bool)
    {
        if let first = firstValue
        {
            firstDie.image = UIImage(named: "d\(first)")
        }
        else
        {
            firstDie.image = nil
        }
        
        if let second = secondValue
        {
            secondDie.image = UIImage(named: "d\(second)")
        }
        else
        {
            secondDie.image = nil
        }
        
        firstDie.alpha = 0
        secondDie.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        UIView.animate(withDuration: 0.3)
        {
            self.firstDie.alpha = 1
            self.secondDie.alpha = 1
        }
        
    }
    
    func imageForValue(_ value: Int?) -> UIImage?
    {
        return nil
    }
    
    @IBAction func dismiss()
    {
        dismiss(animated: true, completion: nil)
    }
    


}

