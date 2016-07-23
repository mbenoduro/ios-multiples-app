//
//  ViewController.swift
//  Multiples
//
//  Created by Maurice Ben-Oduro on 7/18/16.
//  Copyright © 2016 iocreate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var multiplesInput: UITextField!
    @IBOutlet weak var resultsDisplay: UILabel!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    
    // Properties
    var multiplesResult = 0
    var factors = 0
    let maxFactor = 14
    
    // Actions
    @IBAction func playButtonPressed(sender: AnyObject) {
        if multiplesInput.text != nil && multiplesInput.text != "" {
            
            // Hide
            playButton.hidden = true
            multiplesInput.hidden = true
            
            // Unhide
            submitButton.hidden = false
            resultsDisplay.hidden = false
            
            resetLbl()
            
            
        } else {
            displayNilValueAlert()
        }
    }
    @IBAction func submitButtonPressed(sender: AnyObject) {
    
        multiplesResult = Int(multiplesInput.text!)! * factors
        
        resultsDisplay.text = "\(multiplesInput.text!) x \(String(factors)) = \(String(multiplesResult))"
        
        factors += 1
        
        if isGameOver(){
            
            // Unhide
            playButton.hidden = false
            multiplesInput.hidden = false
            
            // Hide
            submitButton.hidden = true
            resultsDisplay.hidden = true
            
            resetLbl()
            
        } 
    }
    
    // Additional Functionality
    func displayNilValueAlert (){
        
        // Setup a constant to UIAlertController Class
        let nilMsgAlertViewController = UIAlertController(title: "Alert", message: "Please enter a value", preferredStyle: UIAlertControllerStyle.Alert)
        
        // Provide and action for the constant
        nilMsgAlertViewController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default, handler: nil))
        
        // Display alert
        self.presentViewController(nilMsgAlertViewController, animated: true, completion: nil)
    }
    func dismissKeyboard() {
        
        // Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    func isGameOver() -> Bool {
        if factors >= maxFactor {
            return true
        } else {
            return false
        }
    }
    func resetLbl() {
        resultsDisplay.text = "Press submit to start!"
    }
    
    // Override
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

