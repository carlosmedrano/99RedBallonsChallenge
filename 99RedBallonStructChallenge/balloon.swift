//
//  ballon.swift
//  99RedBallonStructChallenge
//
//  Created by Carlos Medrano on 2/5/15.
//  Copyright (c) 2015 Carlos Medrano. All rights reserved.
//

import Foundation
import UIKit

struct Balloon {
    var ballonNumber:Int = 0
    var ballonImage = UIImage(named:"")
    
    func createBalloon(number: Int) -> [Balloon]{
        
        var myBalloons:[Balloon] = []
        var randomImageNumber = 0
        var xBalloon = Balloon()
        
        for x in 0...number{
            
            randomImageNumber = Int(arc4random_uniform(UInt32(5)))
            
            switch randomImageNumber {
            case 1:
                xBalloon.ballonImage = UIImage(named: "RedBalloon1.jpg")
            case 2:
                xBalloon.ballonImage = UIImage(named: "RedBalloon2.jpg")
            case 3:
                xBalloon.ballonImage = UIImage(named: "RedBalloon3.jpg")
            case 4:
                xBalloon.ballonImage = UIImage(named: "RedBalloon4.jpg")
            default:
                xBalloon.ballonImage = UIImage(named: "BerlinTVTower.jpg")
            }
            
            xBalloon.ballonNumber = x + 1
            
            myBalloons += [xBalloon]
 
        }
        
           
        return myBalloons
    }
    
    
    
}