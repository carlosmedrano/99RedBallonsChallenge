//
//  ballon.swift
//  99RedBallonStructChallenge
//
//  Created by Carlos Medrano on 2/5/15.
//  Copyright (c) 2015 Carlos Medrano. All rights reserved.
//

import Foundation
import UIKit

struct ballon {
    var ballonNumber:Int = 0
    var ballonImage = UIImage(named:"")
    
    func createBallons(number: Int) -> [ballon]{
        
        var myBallons:[ballon] = []
        var randomImageNumber = 0
        var xBallon = ballon()
        
        for x in 0...number{
            
            randomImageNumber = Int(arc4random_uniform(UInt32(5)))
            
            switch randomImageNumber {
            case 1:
                xBallon.ballonImage = UIImage(named: "RedBalloon1.jpg")
            case 2:
                xBallon.ballonImage = UIImage(named: "RedBalloon2.jpg")
            case 3:
                xBallon.ballonImage = UIImage(named: "RedBalloon3.jpg")
            case 4:
                xBallon.ballonImage = UIImage(named: "RedBalloon4.jpg")
            default:
                xBallon.ballonImage = UIImage(named: "BerlinTVTower.jpg")
            }
            
            xBallon.ballonNumber = x + 1
            
            myBallons += [xBallon]
 
        }
    
        return myBallons
    }
    
    
}