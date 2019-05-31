//
//  ProjectDetailsViewController.swift
//  CVCreater
//
//  Created by Saranya Rathinasamy on 30/05/19.
//  Copyright © 2019 Infosys. All rights reserved.
//

import Foundation
import UIKit
class ProjectDetailsViewController: BaseViewController,saveProtocol {
    //Save protocol for saving data
    func writeToUrl() {
    }

    func saveObject() {
        //Calling function in ViewModel for saving data
        if let projectDetailsObject = projectDetailsViewObject{
            ProjectDetailsViewModel.saveData(projectDetailViewObject:projectDetailsObject)
            self.navigationController?.popViewController(animated: true)
        }
    }
    var projectDetailsViewObject:ProjectDetailsView?
    //Loading View
    override func loadView() {

        //Loading self view from nib
        if let customView = Bundle.main.loadNibNamed("ProjectDetails", owner: self, options: nil)?.first as? ProjectDetailsView {
            projectDetailsViewObject = customView
            loadViewData()
        }
        //Adding back nav item
        saveDelegate = self;
        self.setLeftNavigationItem(title: "Back")

        //Adding Title
        self.navigationController?.title = "Project Details"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //Nav title
        self.navigationItem.title = "Project Details"
    }


    //Func for prepopulating the data with already entered values
    func loadViewData() {
        if let projectDetailsObject = projectDetailsViewObject{
            ProjectDetailsViewModel.loadData(projectDetailsViewObject: projectDetailsObject)
            self.view = projectDetailsViewObject
            projectDetailsViewObject?.commonSetUpForTextFields()
        }
    }
}
