//
//  ConvertViewController.swift
//  Hellow Swift MW
//
//  Created by Admin on 02.04.16.
//  Copyright © 2016 PetroKov_LSR_A. All rights reserved.
//

import UIKit

class ConvertViewController: UIViewController {


    @IBAction func InRub(sender: AnyObject) {
        ToRub()
    
    }

    @IBAction func InDollar(sender: AnyObject) {
    toDollar()
    }
    @IBOutlet weak var Rubles: UITextField!
    @IBOutlet weak var InDollar: UITextField!

    internal func ToRub()
    {
    Rubles.text = "666"
    }

    internal func toDollar()
    {
    InDollar.text = "444"
    }
}
