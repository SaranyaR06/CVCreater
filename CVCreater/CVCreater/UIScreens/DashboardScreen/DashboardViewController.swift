//
//  DashboardViewController.swift
//  CVCreater
//
//  Created by Saranya Rathinasamy on 30/05/19.
//  Copyright © 2019 Infosys. All rights reserved.
//

import Foundation
import UIKit
class DashboardViewController: BaseViewController,navigationProtocol,saveProtocol {

    //SaveProtocol for saving data
    func saveObject() {

    }

    func writeToUrl() {
        DashboardViewModel.finalSave()
    }
//

    override func loadView() {

        var dashboardnib:DashboardView?

        //Loading the View
        let allObjects = Bundle.main.loadNibNamed("DashboardView", owner: self, options: nil) ?? []
        // Get first view object
        if let nib = allObjects.first as? UIView {
            dashboardnib = nib as? DashboardView
        //Setting it to self view
        if let currentView = dashboardnib {
            currentView.optionDelegate = self;
            self.view = currentView
        }
        }
        //setting navigation items
        self.setRightNavigationItem(title: "Save")
        saveDelegate = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //Nav title
        self.navigationItem.title = "Create CV"
    }

    //To load optionViews
    func navigateToOptions(index: IndexPath) {
        loadOptions(indexpath: index)
    }

    //Navigating to option view controllers using segue
    func loadOptions(indexpath:IndexPath) -> Void {
        switch(indexpath.row)
        {
        case 0:
            self.performSegue(withIdentifier: "showPersonal", sender: self)

        case 1:
            self.performSegue(withIdentifier: "showEducation", sender: self)

        case 2:
            self.performSegue(withIdentifier: "showTopicOfKnowledge", sender: self)

        case 3:
            self.performSegue(withIdentifier: "showProjectDetails", sender: self)

        case 4:
            self.performSegue(withIdentifier: "showCurrentCompany", sender: self)

        case 5:
            self.performSegue(withIdentifier: "showAdditionalInfo", sender: self)

        default:
            break
        }
    }

 
}
