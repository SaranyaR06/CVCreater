//
//  AdditionalInfoViewController.swift
//  CVCreater
//
//  Created by  Saranya Rathinasamy on 31/05/19.
//  Copyright © 2019 Infosys. All rights reserved.
//

import Foundation
import UIKit
class AdditionalInfoViewController: BaseViewController,saveProtocol {

    //Save protocol for saving data
    func writeToUrl() {
    }

    func saveObject() {
        //Calling function in ViewModel for saving data
        if let additionaInfoObject = additionaInfoViewObject{
            AdditionalInfoViewModel.saveData(additionaInfoViewObject: additionaInfoObject)
            self.navigationController?.popViewController(animated: true)
        }
    }
    var additionaInfoViewObject:AdditionalInfoView?
    //Loading View
    override func loadView() {

        //Loading self view from nib
        if let customView = Bundle.main.loadNibNamed("AdditionalInfo", owner: self, options: nil)?.first as? AdditionalInfoView {
            additionaInfoViewObject = customView
            loadViewData()
        }
        //Adding back nav item
        saveDelegate = self;
        self.setLeftNavigationItem(title: "Back")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        //Nav title
        self.navigationItem.title = "Additional Info"
    }

    //Func for prepopulating the data with already entered values
    func loadViewData() {
        if let additionaInfoObject = additionaInfoViewObject{
            AdditionalInfoViewModel.loadData(additionaInfoViewObject: additionaInfoObject)
            self.view = additionaInfoViewObject
        }
    }
}
