//
//  ConfigureButtonsWithTextFields.swift
//  InstagramSH
//
//  Created by Sherif on 7/4/19.
//  Copyright © 2019 Sherif. All rights reserved.
//

import Foundation
import UIKit

class ConfigAuthBTNsWithTextFields {
    
    private let textFields: [UITextField]
    private let button: UIButton
    
    init(textFields: [UITextField], button: UIButton) {
        
        self.textFields = textFields
        self.button = button
    
        attachTargetsToTextFields()
        cornerRaduisBTNs()
        disableAuthBTNs()
        checkForEmptyFields()
    }
    
    
    //Attach editing changed listeners to all textfields passed in
    private func attachTargetsToTextFields() {
        for textfield in textFields{
            textfield.addTarget(self, action: #selector(textFieldsIsNotEmpty), for: .editingChanged)
        }
    }
    
    @objc private func textFieldsIsNotEmpty(sender: UITextField) {
        sender.text = sender.text?.trimmingCharacters(in: .whitespaces)
        checkForEmptyFields()
    }
    
    //Returns true if the field is empty, false if it not
    private func checkForEmptyFields() {
        
        for textField in textFields{
            guard let textFieldVar = textField.text, !textFieldVar.isEmpty else {
                disableAuthBTNs()
                return
            }
        }
        enableAuthBTNs()
    }
    
    private func enableAuthBTNs() {
        button.isEnabled = true
        button.backgroundColor = UIColor(red: 24/255, green: 219/255, blue: 190/255, alpha: 1)
    }
    
    private func disableAuthBTNs() {
        button.isEnabled = false
        button.backgroundColor = .init(red: 0/255, green: 97/255, blue: 88/255, alpha: 1)
        
    }
    
    private func cornerRaduisBTNs(){
        button.layer.cornerRadius = 4
    }
    
}
