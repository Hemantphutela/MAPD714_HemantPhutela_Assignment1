//
//  ViewController.swift
//  MAPD714_HemantPhutela_Assignment1
//
//  Created by Hemant Phutela on 23/09/2018.
//  Copyright © 2018 Hemant Phutela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numberOnscreen:Double = 0;
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: Any)
    {
        label.text = label.text! + String((sender as AnyObject).tag-1)
        numberOnscreen = Double(label.text!)!
    }
    
    @IBAction func buttons(_ sender: UIButton)
    {
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            if sender.tag == 12 //divide
            {
                
            }
            else if sender.tag == 13 //Multiply
            {
            
            }
            else if sender.tag == 14 //Minus
            {
                
            }
            else if sender.tag == 15 //Plus
            {
                
            }
            }
        }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

