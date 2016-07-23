//: Playground - noun: a place where people can play

import UIKit

var multiplesInput = "3"
var resultsDisplay = "12 * 12 = 144"
var multiplesResult = 0
var factors = 0

func actionA() -> String{
    while factors <= 12 {
        
        //multiplesResult = Int(multiplesInput.text!)! * factors
        
        multiplesResult = Int(multiplesInput)! * factors
        
        //resultsDisplay.text = "\(multiplesInput) * \(String(factors)) = \(String(multiplesResult))"
        
        resultsDisplay = "\(multiplesInput) * \(String(factors)) = \(String(multiplesResult))"
        
        factors += 1
        
        //print(resultsDisplay)
        
        
    }
    
    return resultsDisplay
    
}

actionA()
actionA()
