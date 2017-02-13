//
//  ViewController.swift
//  carbCandy
//
//  Created by Carlos Daccarett on 2/9/17.
//  Copyright © 2017 Carlos Daccarett. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var currentglucoseTextField: UITextField!
    @IBOutlet weak var targetglucoseTextField: UITextField!
    @IBOutlet weak var insensitivityTextField: UITextField!
    @IBOutlet weak var carbratioTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.currentglucoseTextField.delegate = self
        self.targetglucoseTextField.delegate = self
        self.insensitivityTextField.delegate = self
        self.carbratioTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    @IBAction func calCandy(_ sender: Any) {
        let curglucose = Double(currentglucoseTextField.text!)
        let targglucose = Double(targetglucoseTextField.text!)
        let isens = Double(insensitivityTextField.text!)
        let cratio = Double(carbratioTextField.text!)
        let alert = UIAlertController(title: "Error:", message: "Please Fill Out All Fields", preferredStyle: UIAlertControllerStyle.alert)
        
        
        if ((currentglucoseTextField.text?.isEmpty)! || (targetglucoseTextField.text?.isEmpty)! || (insensitivityTextField.text?.isEmpty)! || (carbratioTextField.text?.isEmpty)!) {
            alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else {
            
            let nCandiesM = numbCandy(currentglucose: curglucose!, targetglucose: targglucose!, insensitivity: isens!, carbratio: cratio!)
            resultLabel.text = String(format: "%.0f", nCandiesM.totalCandy())
        }

    }


}

