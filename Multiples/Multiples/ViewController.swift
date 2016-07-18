//
//  ViewController.swift
//  Multiples
//
//  Created by Maurice Ben-Oduro on 7/18/16.
//  Copyright © 2016 iocreate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Properties
    @IBOutlet weak var multiplesInput: UITextField!
    @IBOutlet weak var resultsDisplay: UILabel!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)

        
    }
    
    //Calls this function when the tap is recognized. 
    func dismissKeyboard() {
        
        // Causes the view (or one of its embedded text fields) to resign the first responder status. 
        view.endEditing(true)
    }

    @IBAction func playButtonPressed(sender: AnyObject) {
        if multiplesInput.text != nil && multiplesInput.text != "" {
            playButton.hidden = true
            submitButton.hidden = false
        } else {
            displayNilValueAlert()
        }
    }
    
    @IBAction func submitButtonPressed(sender: AnyObject) {
    }
    
    func displayNilValueAlert (){
        
        // Setup a constant to UIAlertController Class
        let nilMsgAlertViewController = UIAlertController(title: "Alert", message: "Please enter a value", preferredStyle: UIAlertControllerStyle.Alert)
        
        // Provide and action for the constant
        nilMsgAlertViewController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default, handler: nil))
        
        // Display alert
        self.presentViewController(nilMsgAlertViewController, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

