//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ballImageView: UIImageView!
    
    let ballArray = [UIImage(named: "ball1"), UIImage(named: "ball2"), UIImage(named: "ball3"), UIImage(named: "ball4"), UIImage(named: "ball5")]
    
    let initialBallIndex = 2
    
    override func viewDidLoad() {
        // Default the ball image to ball3
        ballImageView.image = ballArray[initialBallIndex]
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        // If the ask button is pressed, provide a new ball image answer
        ballImageView.image = ballArray[Int.random(in: 0...ballArray.count - 1)]
    }
}
