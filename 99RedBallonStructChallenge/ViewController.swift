//
//  ViewController.swift
//  99RedBallonStructChallenge
//
//  Created by Carlos Medrano on 2/5/15.
//  Copyright (c) 2015 Carlos Medrano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageBallon: UIImageView!
    @IBOutlet weak var ballonNumberLabel: UILabel!
    
    var currentBalloon:[Balloon] = []
    var myBalloon = Balloon()
    var randomBalloon = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        currentBalloon = myBalloon.createBalloon(99)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Create a Balloon's array
    
    
    
    @IBAction func nextRandomBallonButtonPressed(sender: UIBarButtonItem) {
        
        
        randomBalloon = Int(arc4random_uniform(UInt32(98)))
        
        imageBallon.image = currentBalloon[randomBalloon].ballonImage
        ballonNumberLabel.text = "Balloon: \(currentBalloon[randomBalloon].ballonNumber)"
        
    }


}

