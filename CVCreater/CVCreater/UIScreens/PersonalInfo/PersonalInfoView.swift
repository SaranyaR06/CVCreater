//
//  PersonalInfoView.swift
//  CVCreater
//
//  Created by Saranya Rathinasamy on 30/05/19.
//  Copyright © 2019 Infosys. All rights reserved.
//

import Foundation
import UIKit
class PersonalInfoView: UIView,UITextFieldDelegate {
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var phoneNumner: UITextField!
    @IBOutlet weak var emailId: UITextField!
    @IBOutlet weak var addressLine1: UITextField!
    @IBOutlet weak var addressLine2: UITextField!
    @IBOutlet weak var dateOfBirth: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!

    func commonSetUpForTextFields() {
        phoneNumner.delegate = self
        //can be added after adding to scrollview
//        phoneNumner.keyboardType = .numberPad
    }

    func textField(_ textField: UITextField,shouldChangeCharactersIn range: NSRange,replacementString string: String)-> Bool{
        if(textField == phoneNumner)
        {
            if(string.isNumber){

                //To restrict only to enter 10 numberss
                let maxLength = 10
                let currentString: NSString = textField.text! as NSString
                let newString: NSString = currentString.replacingCharacters(in: range, with: string) as NSString
                return newString.length <= maxLength
            }
            else
            {
                return false
            }
        }
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.resignFirstResponder()
    }

}
//To restrict the phone number to only integers
extension String  {
    var isNumber: Bool {
        return !isEmpty && rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
    }
}
