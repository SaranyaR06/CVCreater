//
//  ProjectDetailsViewModel.swift
//  CVCreater
//
//  Created by Saranya Rathinasamy on 30/05/19.
//  Copyright © 2019 Infosys. All rights reserved.
//

import Foundation
import UIKit
class ProjectDetailsViewModel {

    class func saveData(projectDetailViewObject:ProjectDetailsView) {

        //Saving EmployementInfo to ModelClass
        var projectDetailsObject = ModelClasses.ProjectDetails()
        var dict:[String:String] = [:]
        var projectDetailsArray = [[String:String]]();

        //Retrieving data from view to Singleton objects
        if let project = projectDetailViewObject.projectName1.text{
            projectDetailsObject.projectName = project
            projectDetailsObject.technology = projectDetailViewObject.technology1.text ?? ""
            projectDetailsObject.duration = projectDetailViewObject.duration1.text ?? ""
            projectDetailsObject.description = projectDetailViewObject.description1.text ?? ""

            //Converting to Dict for saving
            dict = ModelClasses.sharedInstance.getProjectDetailsDict(project:projectDetailsObject)

            //Adding as an Array since many course can be added
            projectDetailsArray.append(dict)
        }

        if let project = projectDetailViewObject.projectName2.text{
            projectDetailsObject.projectName = project
            projectDetailsObject.technology = projectDetailViewObject.technology2.text ?? ""
            projectDetailsObject.duration = projectDetailViewObject.duration2.text ?? ""
            projectDetailsObject.description = projectDetailViewObject.description2.text ?? ""

            //Converting to Dict for saving
            dict = ModelClasses.sharedInstance.getProjectDetailsDict(project:projectDetailsObject)

            //Adding as an Array since many course can be added
            projectDetailsArray.append(dict)
        }

        //Saving it to Singleton Object
        ResumeDataModel.sharedInstance.projectExp = projectDetailsArray

    }

    class func loadData(projectDetailsViewObject:ProjectDetailsView){

        //Loading data from retrieved URL data

        //Populating Array
        let projectDetailsArray:[[String:String]] = ResumeDataModel.sharedInstance.projectExp

        //populating data to view - initial load
        var i = 0
        while(i<projectDetailsArray.count)
        {
            switch(i){
            case 0:
                let project1 = ModelClasses.sharedInstance.setProjectDetailsDict(data: projectDetailsArray[i])
                projectDetailsViewObject.projectName1.text = project1.projectName
                projectDetailsViewObject.duration1.text = project1.duration
                projectDetailsViewObject.technology1.text = project1.technology
                projectDetailsViewObject.description1.text = project1.description

            case 1:
                let project1 = ModelClasses.sharedInstance.setProjectDetailsDict(data: projectDetailsArray[i])
                projectDetailsViewObject.projectName2.text = project1.projectName
                projectDetailsViewObject.duration2.text = project1.duration
                projectDetailsViewObject.technology2.text = project1.technology
                projectDetailsViewObject.description2.text = project1.description

            default:
                break
            }
            i+=1;
        }

    }
}
