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
    var previousNumber:Double = 0;
    var minusNumber:Double = -1;
    
   var performingMath = false
    var operation = 0;
    var hasDecimal:Bool = false
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton)
    {
        //remove 0
        if(label.text == "0") {
            
            if(sender.tag != -1) {
                label.text = ""
                
            }
            else {
                if(hasDecimal) {
                    label.text = "0"
                }
            }
            
        }
        
     
       if(sender.tag == -1) {
                if(!hasDecimal) {
                    label.text?.append(".")
                    hasDecimal = true
                    
                }
            }
            else {
                label.text?.append(String(sender.tag-1))
        
            }
        numberOnscreen = Double(label.text!)!
    
    }
    @IBAction func buttons(_ sender: UIButton)
    {
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            
            //previousNumber = Double(label.text!)!
            if sender.tag == 18 //+/-
            {
                previousNumber = Double(label.text!)!
                 label.text = String(previousNumber * minusNumber)
               //previousNumber = previousNumber * minusNumber
            }
            
              previousNumber = Double(label.text!)!
            if sender.tag == 12 //divide
            {
                label.text = "";
            }
            else if sender.tag == 13 //Multiply
            {
            label.text = "";
            }
            else if sender.tag == 14 //Minus
            {
               label.text = "";
            }
            else if sender.tag == 15 //Plus
            {
                label.text = "";
            }
            
            operation = sender.tag;
            performingMath = true;
            }
         else if sender.tag == 16
        {
            
            if operation == 12
            {
                if numberOnscreen == 0
                {
                    label.text="Error"
                }
                else
                {
        label.text = String(previousNumber / numberOnscreen)
                }
                }
            else if operation == 13
            {
               label.text = String(previousNumber * numberOnscreen)
            }
            else if operation == 14
            {
                label.text = String(previousNumber - numberOnscreen)
            }
            else if operation == 15
            {
                label.text = String(previousNumber + numberOnscreen)
            }
            else if operation == 17
            {
                label.text = String(numberOnscreen / 100)
            }
        }
        else if sender.tag == 11
        {
            label.text = "0"
            previousNumber = 0;
            operation = 0;
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

