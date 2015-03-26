//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var sumOfNumbers = 0
    
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var numberLabel: UILabel!
    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
    @IBAction func addButton(sender: UIButton) {
        if let numberFieldInt = numberField.text.toInt() {
            cumulativeSum(numberField.text.toInt()!)
        } else {
            numberLabel.text = "Please enter a valid number"
        }
        
    }
    
    func cumulativeSum (nextNumber:Int) {
        sumOfNumbers += nextNumber
        numberLabel.text = String(sumOfNumbers)
        }
    }

