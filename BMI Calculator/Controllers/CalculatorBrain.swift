//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Akmaral Ergesh on 27.02.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?

    
    mutating func getBMIValue() -> String {
        let bmiTo1Dcimal = String(format: "%.1f", bmi?.value ?? "0.0")
        return bmiTo1Dcimal
    }
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
   }
   func getColor() -> UIColor?{
       return bmi?.color ?? .white
   }
    
    mutating func calculateBMI(height: Float, weight: Float) {
       let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
           bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .systemBlue)
        } else if bmiValue < 24.9 {
           bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .green)
        } else {
           bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: .red)
        }
        
    }
    
    
}
