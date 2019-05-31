//
//  CurrentCompnayViewModel.swift
//  CVCreater
//
//  Created by Saranya Rathinasamy on 31/05/19.
//  Copyright © 2019 Infosys. All rights reserved.
//

import Foundation
import UIKit
class CurrentCompnayViewModel {
    class func saveData(currentCompanyViewObject:CurrentCompanyView) {

        //Saving CurrentCompanyView to ModelClass
        ModelClasses.sharedInstance.currentCompanyDetailsObject.companyName = currentCompanyViewObject.companyName.text ?? ""
        ModelClasses.sharedInstance.currentCompanyDetailsObject.designation = currentCompanyViewObject.designation.text ?? ""
        ModelClasses.sharedInstance.currentCompanyDetailsObject.experience = currentCompanyViewObject.experience.text ?? ""
        ModelClasses.sharedInstance.currentCompanyDetailsObject.achievements = currentCompanyViewObject.achievements.text ?? ""

        //Converting to Dict for saving
        ResumeDataModel.sharedInstance.pastExp = ModelClasses.sharedInstance.getCurrentCompanyDetailsDict(company: ModelClasses.sharedInstance.currentCompanyDetailsObject)

    }

    class func loadData(currentCompanyViewObject:CurrentCompanyView){

        //Loading data from retrieved URL data
        currentCompanyViewObject.companyName.text = ModelClasses.sharedInstance.currentCompanyDetailsObject.companyName
        currentCompanyViewObject.designation.text = ModelClasses.sharedInstance.currentCompanyDetailsObject.designation
        currentCompanyViewObject.experience.text = ModelClasses.sharedInstance.currentCompanyDetailsObject.experience
        currentCompanyViewObject.achievements.text = ModelClasses.sharedInstance.currentCompanyDetailsObject.achievements

    }
}
