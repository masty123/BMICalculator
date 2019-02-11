//
//  ViewController.swift
//  BMICalculator
//
//  Created by Theeruth Borisuth on 24/1/19.
//  Copyright © 2019 Theeruth Borisuth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageResult: UIImageView!
    @IBOutlet weak var bmiResult: UILabel!
    @IBOutlet weak var categoryResult: UILabel!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var weight: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func calculate(_ sender: Any) {
        let h = Double(height.text!)
        let w = Double(weight.text!)
        
        if w != nil && h != nil  {
            // either textfield 1 or 2's text is empty
            let bmi: Double = (w!/(pow((h!/100),2)))
            bmiResult.text = "\(bmi)"
            
            if (bmi > 27.5) {
                imageResult.image = UIImage(named: "obese.jpg")
                categoryResult.text = "obese"
                categoryResult.textColor = UIColor.red
            } else if (bmi >= 23 && bmi < 27.5){
                imageResult.image = UIImage(named: "overweight.png")
                categoryResult.text = "overweight"
                categoryResult.textColor = UIColor.orange
            } else if (bmi >= 18.5 && bmi < 23){
                imageResult.image = UIImage(named: "Healthy range.jpg")
                categoryResult.text = "healthy range"
                categoryResult.textColor = UIColor.green
            } else {
                imageResult.image = UIImage(named: "skinny.png")
                categoryResult.text = "underweight"
                categoryResult.textColor = UIColor.blue
            }
        }
    }
}

