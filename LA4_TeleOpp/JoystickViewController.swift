//
//  JoystickViewController.swift
//  LA4_TeleOpp
//
//  Created by Natalie Carmela Polk on 10/12/16.
//  Copyright © 2016 Natalie Carmela Polk. All rights reserved.
//

import UIKit

class JoystickViewController: UIViewController {

    @IBOutlet weak var verticalSlider: UISlider!
    @IBOutlet weak var horizontalSlider: UISlider!
    
    @IBOutlet weak var yValue: UILabel!
    @IBOutlet weak var xValue: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        verticalSlider.transform = CGAffineTransformMakeRotation(CGFloat(-M_PI_2))
        
        yValue.text = NSString(format: "%.2f", verticalSlider.value) as String
        
        xValue.text = NSString(format: "%.2f", horizontalSlider.value) as String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func yValueChanged(sender: AnyObject) {
        yValue.text = NSString(format: "%.2f", verticalSlider.value) as String
    }

    @IBAction func xValueChanged(sender: AnyObject) {
        xValue.text = NSString(format: "%.2f", horizontalSlider.value) as String
    }

    @IBAction func resetVerticalSlider(sender: AnyObject) {
        verticalSlider.value = 0.5
        yValue.text = NSString(format: "%.2f", verticalSlider.value) as String
    }
    
    @IBAction func resetHorizontalSlider(sender: AnyObject) {
        horizontalSlider.value = 0.5
        xValue.text = NSString(format: "%.2f", horizontalSlider.value) as String
    }
    
}
