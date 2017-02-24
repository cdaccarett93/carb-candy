//
//  ViewController.swift
//  carbCandy
//
//  Created by Carlos Daccarett on 2/9/17.
//  Copyright © 2017 Carlos Daccarett. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var picker: UIPickerView!
    
    @IBOutlet weak var currentglucoseTextField: UITextField!
    @IBOutlet weak var targetglucoseTextField: UITextField!
    @IBOutlet weak var insensitivityTextField: UITextField!
    @IBOutlet weak var carbratioTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    let candies = ["Original Skittles 0.925", "Tropical Skittles 0.911","Wild Berry Skittles 0.911" , "Sweet&Sour Skittles 0.917", "Smarties 0.857"]
    
    var carbpCandy:Double = 0.0;
    var stringCandy:String = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.currentglucoseTextField.delegate = self
        self.targetglucoseTextField.delegate = self
        self.insensitivityTextField.delegate = self
        self.carbratioTextField.delegate = self
        self.picker.delegate = self
        self.picker.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return candies.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return candies[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let titleData = candies[row]
        let myTitle = NSAttributedString(string: titleData, attributes: [NSFontAttributeName:UIFont(name: "Avenir Next", size: 10.0)!,NSForegroundColorAttributeName:UIColor.white])
        return myTitle
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        stringCandy = candies[row]
    }
    
    
    @IBAction func calCandy(_ sender: Any) {
        let curglucose = Double(currentglucoseTextField.text!)
        let targglucose = Double(targetglucoseTextField.text!)
        let isens = Double(insensitivityTextField.text!)
        let cratio = Double(carbratioTextField.text!)
        let carbpCandy = Double(stringCandy.substring(from:stringCandy.index(stringCandy.endIndex, offsetBy: -4)))
        let alert = UIAlertController(title: "Error:", message: "Please Fill Out All Fields", preferredStyle: UIAlertControllerStyle.alert)
        
        
        if ((currentglucoseTextField.text?.isEmpty)! || (targetglucoseTextField.text?.isEmpty)! || (insensitivityTextField.text?.isEmpty)! || (carbratioTextField.text?.isEmpty)!) {
            alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else {
            
            let nCandiesM = numbCandy(currentglucose: curglucose!, targetglucose: targglucose!, insensitivity: isens!, carbratio: cratio!, carbperCandy: carbpCandy!)
            resultLabel.text = String(format: "%.0f", nCandiesM.totalCandy())
        }

    }


}

