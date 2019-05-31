//
//  CurrentCompanyViewController.swift
//  CVCreater
//
//  Created by Saranya Rathinasamy on 31/05/19.
//  Copyright © 2019 Infosys. All rights reserved.
//

import Foundation
import UIKit
class CurrentCompanyViewController:BaseViewController,saveProtocol{

    //Save protocol for saving data
    func writeToUrl() {
    }

    func saveObject() {
        //Calling function in ViewModel for saving data
        if let currentCompanyObject = currentCompanyViewObject{
            CurrentCompnayViewModel.saveData(currentCompanyViewObject: currentCompanyObject)
            self.navigationController?.popViewController(animated: true)
        }
    }
    var currentCompanyViewObject:CurrentCompanyView?
    //Loading View
    override func loadView() {

        //Loading self view from nib
        if let customView = Bundle.main.loadNibNamed("CurrentCompany", owner: self, options: nil)?.first as? CurrentCompanyView {
            currentCompanyViewObject = customView
            loadViewData()
        }
        //Adding back nav item
        saveDelegate = self;
        self.setLeftNavigationItem(title: "Back")

        //Adding Title
        self.navigationController?.title = "Current/latest Company Details"
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        //Nav title
        self.navigationItem.title = "Current Company"
    }

    //Func for prepopulating the data with already entered values - Initial load
    func loadViewData() {
        if let currentCompanyObject = currentCompanyViewObject{
            CurrentCompnayViewModel.loadData(currentCompanyViewObject: currentCompanyObject)
            self.view = currentCompanyViewObject
            currentCompanyViewObject?.commonSetUpForTextFields()
        }
    }
}
