//
//  TopicsOfKnowledgeView.swift
//  CVCreater
//
//  Created by Saranya Rathinasamy on 30/05/19.
//  Copyright © 2019 Infosys. All rights reserved.
//

import Foundation
import UIKit
class TopicsOfKnowledgeView: UIView,UITextFieldDelegate {
    @IBOutlet weak var knowledge1: UITextField!
    @IBOutlet weak var experience1: UITextField!

    @IBOutlet weak var knowledge2: UITextField!
    @IBOutlet weak var experience2: UITextField!

    @IBOutlet weak var knowledge3: UITextField!
    @IBOutlet weak var experience3: UITextField!
    

    @IBOutlet weak var knowledge4: UITextField!
    @IBOutlet weak var experience4: UITextField!
    
    @IBOutlet weak var knowledge5: UITextField!
    @IBOutlet weak var experience5: UITextField!

    func commonSetUpForTextFields() {
        experience1.delegate = self
        experience2.delegate = self
        experience3.delegate = self
        experience5.delegate = self
        experience4.delegate = self

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
