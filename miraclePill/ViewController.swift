//
//  ViewController.swift
//  miraclePill
//
//  Created by aoi haru on 8/8/18.
//  Copyright © 2018 TYCHOcrater. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTextFieldLabel: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipTextFieldLabel: UITextField!
    @IBOutlet weak var successIndicator: UIImageView!
    
    let states = ["Alaska","Arkansas","Alabama","California","New York","Maine"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePickerBtn.isHidden = false
        countryLabel.isHidden = true
        countryTextFieldLabel.isHidden = true
        zipLabel.isHidden = true
        zipTextFieldLabel.isHidden = true
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState()) //UIControlState.normal
        statePicker.isHidden = true
        
        countryLabel.isHidden = false
        countryTextFieldLabel.isHidden = false
        zipLabel.isHidden = false
        zipTextFieldLabel.isHidden = false
        
    }
    
    @IBAction func buyBtnPressed(_ sender: Any) {
        for subview in view.subviews {
            subview.isHidden = true
        }
        
        successIndicator.isHidden = false
    }
    
    
}

