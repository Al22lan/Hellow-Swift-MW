//
//  ViewController.swift
//  Hellow Swift MW
//
//  Created by Admin on 02.04.16.
//  Copyright © 2016 PetroKov_LSR_A. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
   
    @IBOutlet weak var InputField: UITextField!
    
    @IBAction func buttonPressd(sender: AnyObject) {
        let userName = InputField.text ?? "Anonym"
        let greeting = "Привет!! \n Велкам " + userName
        greetingLabel.text = greeting
        }
    override func viewDidLoad() {
        super.viewDidLoad()
        InputField.delegate = self
        
    }
    
}

extension ViewController:UITextFieldDelegate
{
    func textFieldShouldReturn(textField: UITextField) -> Bool {
 
        textField.resignFirstResponder()
        return true
    }
    func textField(textField: UITextField,
                   shouldChangeCharactersInRange range: NSRange,
                   replacementString string: String) -> Bool {
        
        var applyiedString = (textField.text as? NSString)?.stringByReplacingCharactersInRange(range, withString: string)
        let elementsToConvert = ["1":"Один",
                                 "5":"Пять"]
                    
        for (digit, letters) in elementsToConvert
        { applyiedString = applyiedString?.stringByReplacingOccurrencesOfString(digit, withString:letters )
            textField.text = applyiedString// Vasya("AAAA",var2:"BBBB")
        }
                    
        return false
          
    }
    
//    func Vasya(var1: String, var2: String)->String
//    {
//     return var1+var2
//    }
    
    
    

    
}