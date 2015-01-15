//
//  ViewController.swift
//  Age Of Laika
//
//  Created by Vacano on 12/8/14.
//  Copyright (c) 2014 Vacano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dogYearLabel: UILabel!
    
    @IBOutlet weak var humanYearTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func toDogYearButtonPressed(sender: UIButton) {
        
        let humanYear = humanYearTextField.text.toInt()!
        
        //var dogYear = humanYear * 7
        dogYearLabel.hidden = false
        
        dogYearLabel.text = "\(humanYear * 7)" + "Dog Years"
        humanYearTextField.resignFirstResponder()
        
    }
    
    
    @IBAction func realYearsButtonPressed(sender: UIButton) {
        
        let humanYear = humanYearTextField.text.toInt()!
        let doubleHumanYears = Double(humanYear)
        
        var dogYears:Double
        //in this if statement the doubleHumanYears - 2 is to take the first 2 years out since we have it in the first expression(10.5 *2)
        if doubleHumanYears > 2{
            dogYears = (10.5 * 2) + (doubleHumanYears - 2) * 4
        }
        else{
            dogYears = doubleHumanYears * 10.5
        }
        
        dogYearLabel.text = "\(dogYears)"
        dogYearLabel.hidden = false
        
        humanYearTextField.resignFirstResponder()
    }
    
    }




