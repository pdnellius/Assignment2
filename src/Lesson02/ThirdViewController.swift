//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    /*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.
    
    */
    func isEvenNumber (inputNumber:Int) {
        if inputNumber % 2 == 0 {
            displayResult.text = "The number is even"
        } else {
            displayResult.text = "The number is odd"
        }
    }
    
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var displayResult: UILabel!
    @IBAction func calculateButton(sender: AnyObject) {
        if let valExists = numberField.text.toInt() {
            isEvenNumber(valExists)
        } else {
        displayResult.text = "Please enter a number"
        }
    }
}