//
//  ViewController.swift
//  WarCardGame
//
//  Created by Vannia Alfaro alfaro on 05/04/2019.
//  Copyright © 2019 Vannia Alfaro alfaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var LeftImageView: UIImageView!
    
    @IBOutlet weak var RightImageView: UIImageView!
    
    
    @IBOutlet weak var LeftScoreLabel: UILabel!
    
    @IBOutlet weak var RightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        print(leftNumber)
        
        let rightNumber = Int.random(in: 2...14)
        print(leftNumber)
        
        LeftImageView.image = UIImage(named: "card\(leftNumber)")
        
        RightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber{
            leftScore += 1
            
            LeftScoreLabel.text = String(leftScore)
            
        }
        else if leftNumber < rightNumber{
            rightScore += 1
            RightScoreLabel.text = String(rightScore)
        }
        else{
            //tie
        }
    }
    

}

