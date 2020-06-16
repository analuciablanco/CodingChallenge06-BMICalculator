//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = ("\(height)m")
        
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        // Different ways for Int slider values:
        //String(format: "%.0f", sender.value)
        //Int(sender.value)

        let weight = Int(sender.value)
        weightLabel.text = ("\(weight)Kg")
    }
    
    @IBAction func btnCalculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height, weight)
        
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            
            let destinationVC = segue.destination as! ResultsController
            
            destinationVC.bmiValue = calculatorBrain.getBMIvalue()
            destinationVC.bmiAdvice = calculatorBrain.getBMIadvice()
            destinationVC.bmiColor = calculatorBrain.getBMIcolor()
        }
    }
    
}

