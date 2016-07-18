//
//  ViewController.swift
//  Multiples
//
//  Created by Maurice Ben-Oduro on 7/18/16.
//  Copyright © 2016 iocreate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
