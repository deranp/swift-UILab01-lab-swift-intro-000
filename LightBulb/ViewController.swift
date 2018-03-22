//
//  ViewController.swift
//  LightBulb
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var lightBulb: UIImageView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.changeLightBulbColor(color: "blue")
        segmentedControl.selectedSegmentIndex = 2
    }
    
    @IBAction func colorSelected(_ sender: UISegmentedControl)
    {
        self.changeLightBulbColor(color: sender.titleForSegment(at: sender.selectedSegmentIndex)!)
    }
    
    func changeLightBulbColor(color: String)
    {
        var changeColor: UIColor = .white
        
        switch color.lowercased()
        {
        case "blue":
         changeColor = .blue
        case "red":
            changeColor = .red
        case "yellow":
            changeColor = .yellow
        case "green":
            changeColor = .green
        default:
            changeColor = .white
        }
        
        lightBulb.backgroundColor = changeColor
    }
}
