//
//  CurrentCompanyView.swift
//  CVCreater
//
//  Created by Saranya Rathinasamy on 31/05/19.
//  Copyright © 2019 Infosys. All rights reserved.
//

import Foundation
import UIKit
class CurrentCompanyView: UIView,UITextFieldDelegate {
    @IBOutlet weak var companyName: UITextField!
    @IBOutlet weak var designation: UITextField!
    @IBOutlet weak var experience: UITextField!
    @IBOutlet weak var achievements: UITextView!

    func commonSetUpForTextFields() {
        experience.delegate = self

    }

    //TextField Delegates
    func textField(_ textField: UITextField,shouldChangeCharactersIn range: NSRange,replacementString string: String)-> Bool{
        if(string.isNumber){
            return true
        }
        else
        {
            return false
        }
    }
}
