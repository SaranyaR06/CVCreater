//
//  TopicOfKnowledgeViewController.swift
//  CVCreater
//
//  Created by Saranya Rathinasamy on 30/05/19.
//  Copyright © 2019 Infosys. All rights reserved.
//

import Foundation
import UIKit
class TopicOfKnowledgeViewController:BaseViewController,saveProtocol{
    
    //Save protocol for saving data
    func writeToUrl() {
    }

    func saveObject() {
        //Calling function in ViewModel for saving data
        if let tokInfoObject = topicsOfKnowledgeViewObject{
            TopicOfKnowledgeViewModel.saveData(tokViewObject: tokInfoObject)
            self.navigationController?.popViewController(animated: true)
        }
    }
    var topicsOfKnowledgeViewObject:TopicsOfKnowledgeView?
    //Loading View
    override func loadView() {

        //Loading self view from nib
        if let customView = Bundle.main.loadNibNamed("TopicsOfKnowledge", owner: self, options: nil)?.first as? TopicsOfKnowledgeView {
            topicsOfKnowledgeViewObject = customView
            loadViewData()
        }
        //Adding back nav item
        saveDelegate = self;
        self.setLeftNavigationItem(title: "Back")

        //Adding Title
        self.navigationController?.title = "Topics of Knowledge"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //Nav title
        self.navigationItem.title = "Topics Of Knowledge"
    }


    //Func for prepopulating the data with already entered values - Initial load
    func loadViewData() {
        if let tokInfoObject = topicsOfKnowledgeViewObject{
            TopicOfKnowledgeViewModel.loadData(tokViewObject: tokInfoObject)
            self.view = topicsOfKnowledgeViewObject
            topicsOfKnowledgeViewObject?.commonSetUpForTextFields()
        }
    }
}
