//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    /*
    TODO one: hook up a button in interface builder to a new function (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’
    TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW function (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!”
    TODO three: Hook up the button to a NEW function (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
    TODO four: Hook up the button to a NEW function (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
    */
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var helloWorldLabel: UILabel!
    
    func helloWorld() {
        helloWorldLabel.text = "Hello, world.\n"
    }
    
    // One
    @IBAction func helloWorldButton(sender: AnyObject) {
        helloWorld()
        if let ageFieldInt = ageField.text.toInt() {
            calcNameAndAge(nameField.text, age: ageField.text)
            userAllowedToBeGrownup(nameField.text, userAge: ageField.text.toInt()!)
            userAllowedToBeGrownupConcat(nameField.text, age: ageField.text.toInt()!)
        } else {
            helloWorldLabel.text = "Please enter a valid age"
        }
        
        
    }
    //Two
    func calcNameAndAge(name:String, age:String) {
        helloWorldLabel.text? += ("Hello \(name), you are \(age) years old\n")
    }
    
    //Three
    func userAllowedToBeGrownup(userName:String, userAge:Int) {
        if userAge >= 21 {
            helloWorldLabel.text? += ("You can drink!\n")
        } else if userAge >= 18 {
            helloWorldLabel.text? += ("You can vote\n")
        } else if userAge >= 16 {
            helloWorldLabel.text? += ("You can drive\n")
        } else {
            helloWorldLabel.text? += ("You are too young to do anything exciting.\n")
        }
    }
    
    // Four
    
    func userAllowedToBeGrownupConcat (name:String, age:Int) {
        if age >= 16 && age < 18 {
            helloWorldLabel.text? += ("You can drive")
        } else if age >= 18 && age < 21 {
            helloWorldLabel.text? += ("You can drive and vote")
        } else if age >= 21 {
            helloWorldLabel.text? += ("You can drive, vote, and drink (but not at the same time")
        }
    }
    
    
    
    
}
