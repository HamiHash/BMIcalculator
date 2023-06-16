//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Hamed Hashemi on 6/15/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit



struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(weight: Float, height: Float) {
        var bmiValue = String(format: "%.1f", weight /  pow(height, 2)) // pow => (this number, to the power of this)
        if Double(bmiValue)! < 18.5 {
            bmi = BMI(bmi: bmiValue, advice: "Eat more pies!", color: UIColor.systemTeal )
        } else if Double(bmiValue)! > 25 {
            bmi = BMI(bmi: bmiValue, advice: "Eat less pies!", color: UIColor.systemRed )
        } else {
            bmi = BMI(bmi: bmiValue, advice: "Fit as a fiddle!", color: UIColor.systemGreen )
        }
    }
    
    func getBMIValue() -> String {
        return bmi?.bmi ?? "No value"
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
