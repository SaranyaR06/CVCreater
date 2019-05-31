//
//  PersonalInfoViewModel.swift
//  CVCreater
//
//  Created by Saranya Rathinasamy on 30/05/19.
//  Copyright © 2019 Infosys. All rights reserved.
//

import Foundation

class PersonalInfoViewModel
{
    class func saveData(personalViewObject:PersonalInfoView) {
        
        //Saving PersonalInfo to ModelClass
        ModelClasses.sharedInstance.personalInfoObject.firstName = personalViewObject.firstName.text ?? ""
        ModelClasses.sharedInstance.personalInfoObject.lastName = personalViewObject.lastName.text ?? ""
        ModelClasses.sharedInstance.personalInfoObject.phoneNumber = personalViewObject.phoneNumner.text ?? ""
        ModelClasses.sharedInstance.personalInfoObject.emailId = personalViewObject.emailId.text ?? ""
        ModelClasses.sharedInstance.personalInfoObject.address1 = personalViewObject.addressLine1.text ?? ""
        ModelClasses.sharedInstance.personalInfoObject.address2 = personalViewObject.addressLine2.text ?? ""
        ModelClasses.sharedInstance.personalInfoObject.dob  = personalViewObject.dateOfBirth?.text ?? ""

        //Converting to Dict for saving
        ResumeDataModel.sharedInstance.personalInfo = ModelClasses.sharedInstance.getPersonalInfoDict()

    }

    class func loadData(personalViewObject:PersonalInfoView){

        //Loading data from retrieved URL data

        ModelClasses.sharedInstance.personalInfoObject = ModelClasses.sharedInstance.setPersonalInfoDict(data: ResumeDataModel.sharedInstance.personalInfo)

        personalViewObject.firstName.text = ModelClasses.sharedInstance.personalInfoObject.firstName
        personalViewObject.lastName.text = ModelClasses.sharedInstance.personalInfoObject.lastName
        personalViewObject.phoneNumner.text = ModelClasses.sharedInstance.personalInfoObject.phoneNumber
        personalViewObject.emailId.text = ModelClasses.sharedInstance.personalInfoObject.emailId
        personalViewObject.addressLine1.text = ModelClasses.sharedInstance.personalInfoObject.address1
        personalViewObject.addressLine2.text = ModelClasses.sharedInstance.personalInfoObject.address2
        personalViewObject.dateOfBirth.text = ModelClasses.sharedInstance.personalInfoObject.dob

    }
}
