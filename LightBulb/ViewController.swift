//
//  ViewController.swift
//  LightBulb
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lightBulb: UIImageView!
    @IBOutlet weak var clickRateMeter: UIProgressView!
    var counter = 0
    // TODO: 
//    - progressView to increment per change of color bulb.
//    - 10 is the limit, with the bulb turning white then
//    - text pops up saying the bulb exploded and was replaced with a new one.
    override func viewDidLoad() {
        
        super.viewDidLoad()
//        colorSelected(_:)
        lightBulb.backgroundColor = UIColor.white
    }
    
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        print(sender.selectedSegmentIndex)
        switch sender.selectedSegmentIndex {
        case 0:
            print("Red has been printed")
            counter += 1
            lightBulb.backgroundColor = UIColor.red
        case 1:
            print("Yellow has been printed")
            counter += 1
            lightBulb.backgroundColor = UIColor.yellow
        case 2:
            print("Blue has been printed")
            counter += 1
            lightBulb.backgroundColor = UIColor.blue
        case 3:
            print("Green has been updated")
            counter += 1
            lightBulb.backgroundColor = UIColor.green
        default:
            print("Nothing selected and/or TODO")
        }
        
    }
}
