//
//  PersonalInfoController.swift
//  CVCreater
//
//  Created by Saranya Rathinasamy on 29/05/19.
//  Copyright © 2019 Infosys. All rights reserved.
//

import Foundation
import UIKit
class PersonalInfoController:BaseViewController,saveProtocol
{
    //Save protocol for saving data
    func writeToUrl() {
    }

    func saveObject() {
        //Calling function in ViewModel for saving data
        if let personalInfoObject = personalInfoViewObject{
            PersonalInfoViewModel.saveData(personalViewObject: personalInfoObject)
            self.navigationController?.popViewController(animated: true)
        }
    }
    var personalInfoViewObject:PersonalInfoView?
    //Loading View
    override func loadView() {

        //Loading self view from nib
        if let customView = Bundle.main.loadNibNamed("PersonalInfo", owner: self, options: nil)?.first as? PersonalInfoView {
            personalInfoViewObject = customView
            customView.datePicker.isHidden = true
            loadViewData()
        }
        //Adding back nav item
        saveDelegate = self;
        self.setLeftNavigationItem(title: "Back")

    }

    override func viewDidLoad() {
        super.viewDidLoad()

        //Nav title
        self.navigationItem.title = "Personal Info"
    }

    //Func for prepopulating the data with already entered values
    func loadViewData() {
        if let personalInfoObject = personalInfoViewObject{
            PersonalInfoViewModel.loadData(personalViewObject: personalInfoObject)
            self.view = personalInfoViewObject
            personalInfoObject.commonSetUpForTextFields()
        }
    }
}

