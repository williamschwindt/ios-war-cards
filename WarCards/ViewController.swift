//
//  ViewController.swift
//  WarCards
//
//  Created by William Schwindt on 5/6/20.
//  Copyright © 2020 William Schwindt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBOutlet weak var resetBtn: UIButton!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetBtn.layer.cornerRadius = 10
    }
    
    @IBAction func resetGame(_ sender: Any) {
        winnerLabel.text = "First One to 20 Wins"
        leftScore = 0
        leftScoreLabel.text = "\(leftScore)"
        rightScore = 0
        rightScoreLabel.text = "\(rightScore)"
    }
    
    @IBAction func dealTapped(_ sender: Any) {
        if leftScore < 20 && rightScore < 20 {
            let leftNumber = Int.random(in: 2...14)
            let rightNumber = Int.random(in: 2...14)
            
            leftImageView.image = UIImage(named: "card\(leftNumber)")
            rightImageView.image = UIImage(named: "card\(rightNumber)")
            
            if leftNumber > rightNumber {
                leftScore += 1
                leftScoreLabel.text = "\(leftScore)"
                if leftScore == 20 {
                    winnerLabel.text = "Player 1 Wins!"
                }
            }
            
            else if leftNumber < rightNumber {
                rightScore += 1
                rightScoreLabel.text = "\(rightScore)"
                if rightScore == 20 {
                    winnerLabel.text = "CPU Wins!"
                }
            }
        }
        
    }
}

