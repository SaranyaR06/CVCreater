//
//  EducationViewcontroller.swift
//  CVCreater
//
//  Created by Saranya Rathinasamy on 30/05/19.
//  Copyright © 2019 Infosys. All rights reserved.
//

import Foundation
import UIKit
class EducationViewController: BaseViewController,saveProtocol {

    func writeToUrl() {
    }

    func saveObject() {
        //invoke function in ViewModel for saving data
        if let educationViewInfoObject = educationInfoViewObject{
            EducationViewModel.saveData(educationalViewObject: educationViewInfoObject)
            self.navigationController?.popViewController(animated: true)
        }
    }
    var educationInfoViewObject:EducationView?

    //Loading View
    override func loadView() {

        //Loading self view from nib
        if let customView = Bundle.main.loadNibNamed("EducationView", owner: self, options: nil)?.first as? EducationView {
             educationInfoViewObject = customView
            loadViewData()
        }
        //Adding back nav item
        saveDelegate = self;
        self.setLeftNavigationItem(title: "Back")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //Nav title
        self.navigationItem.title = "Education Details"
    }

    //Func for prepopulating the data with already entered values
    func loadViewData() {
        if let educationInfoObject = educationInfoViewObject{
            EducationViewModel.loadData(educationalViewObject: educationInfoObject)
            self.view = educationInfoViewObject
        }
    }
}
