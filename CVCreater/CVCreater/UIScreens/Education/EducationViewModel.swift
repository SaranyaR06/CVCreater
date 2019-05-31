//
//  EducationViewModel.swift
//  CVCreater
//
//  Created by Saranya Rathinasamy on 30/05/19.
//  Copyright © 2019 Infosys. All rights reserved.
//

import Foundation
import UIKit
class EducationViewModel
{
    class func saveData(educationalViewObject:EducationView) {

        //Saving EmployementInfo to ModelClass
        var educationalObject = ModelClasses.EducationalInfo()

        educationalObject.universityName = educationalViewObject.universsityName.text ?? ""
        educationalObject.courseName = educationalViewObject.courseName.text ?? ""
        educationalObject.fromDate = educationalViewObject.fromDate.text ?? ""
        educationalObject.toDate = educationalViewObject.toDate.text ?? ""

        //Converting to Dict for saving
        let dict = ModelClasses.sharedInstance.getEducationalInfoDict(educationalInfo: educationalObject)

        //Adding as an Array since many course can be added
        var employementArray = [[String:String]]();
        employementArray.append(dict)

        //Saving it to Singleton Object
        ResumeDataModel.sharedInstance.education = employementArray

    }

    class func loadData(educationalViewObject:EducationView){

        //Loading data from retrieved URL data

        //Populating Array
        let employementArray = ResumeDataModel.sharedInstance.education

        //populating data to view - initial load
        for employeeObj in employementArray
        {
            let education = ModelClasses.sharedInstance.setEducationalInfoDict(data: employeeObj)
            educationalViewObject.universsityName.text = education.universityName
            educationalViewObject.courseName.text =  education.courseName
            educationalViewObject.toDate.text = education.toDate
            educationalViewObject.fromDate.text = education.fromDate

        }

    }
}
