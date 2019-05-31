//
//  ProjectDetailsView.swift
//  CVCreater
//
//  Created by Saranya Rathinasamy on 30/05/19.
//  Copyright © 2019 Infosys. All rights reserved.
//

import Foundation
import UIKit
class ProjectDetailsView: UIView,UITextFieldDelegate {
    
    @IBOutlet weak var projectName1: UITextField!
    @IBOutlet weak var technology1: UITextField!
    @IBOutlet weak var duration1: UITextField!
    @IBOutlet weak var description1: UITextView!
    @IBOutlet weak var projectName2: UITextField!
    @IBOutlet weak var technology2: UITextField!
    @IBOutlet weak var duration2: UITextField!
    @IBOutlet weak var description2: UITextView!

    func commonSetUpForTextFields() {
        duration1.delegate = self
        duration2.delegate = self

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
