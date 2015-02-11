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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func nextRandomBallonButtonPressed(sender: UIBarButtonItem) {
        
        var currentBallon:[ballon] = []
        currentBallon = ballon.createBallons(99)
        
        
        
        //imageBallon.image = currentBallon.ballonImage
        //ballonNumberLabel.text = "Ballon: \(currentBallon.ballonNumber)"
    }


}

