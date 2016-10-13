//
//  LandingViewController.swift
//  LA4_TeleOpp
//
//  Created by Natalie Carmela Polk on 10/12/16.
//  Copyright © 2016 Natalie Carmela Polk. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {
    
    let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startButtonTapped(sender: AnyObject) {
        appDelegate.navigateToJoystickViewController()
    }

}
