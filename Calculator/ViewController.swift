//
//  ViewController.swift
//  Calculator
//
//  Created by Xunnun on 28/1/20.
//  Copyright © 2020 USER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen:Double = 0;
    var previousNummber:Double = 0;
    var performingMath = false
    var operation = 0;
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttons(_ sender: UIButton)
    {
        if performingMath == true
        {
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            performingMath = false
            
        }
        else
        {
            label.text = label.text!  + String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
        }
        
    }
    
    @IBAction func btn(_ sender: UIButton)
    {
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            previousNummber = Double(label.text!)!
            if sender.tag == 12
            {
                label.text = "/";
            }
            else if sender.tag == 13
            {
                label.text = "x";

            }
            else if sender.tag == 14
            {
                label.text = "-";

            }
            else if sender.tag == 15
            {
                label.text = "+";
            }
            operation = sender.tag
            performingMath = true
            
            
        }
        else if sender.tag == 16
        {
            if operation == 12
            {
                label.text = String(previousNummber / numberOnScreen)
            }
            else if operation == 13
            {
                label.text = String(previousNummber * numberOnScreen)
            }
            else if operation == 14
            {
                label.text = String(previousNummber - numberOnScreen)
            }
            else if operation == 15
            {
                label.text = String(previousNummber + numberOnScreen)
                
            }
            
        }
        else if sender.tag == 11
        {
            label.text = ""
            previousNummber = 0
            numberOnScreen = 0
            operation = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

