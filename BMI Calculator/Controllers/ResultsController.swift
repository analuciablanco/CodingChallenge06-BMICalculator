//
//  ResultsController.swift
//  BMI Calculator
//
//  Created by Ana Lucia Blanco on 15/06/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultsController: UIViewController {
    
    var bmiValue: String?
    var bmiAdvice: String?
    var bmiColor: UIColor?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiBackgroundColor: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = bmiAdvice
        bmiBackgroundColor.backgroundColor = bmiColor
    }
    
    @IBAction func btnRecalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
