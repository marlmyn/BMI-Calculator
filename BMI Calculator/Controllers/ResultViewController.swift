//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Akmaral Ergesh on 27.02.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue: String?
    var advice : String?
    var color: UIColor?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = bmiValue
        textLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        
        dismiss(animated: true)
    }
    
}
