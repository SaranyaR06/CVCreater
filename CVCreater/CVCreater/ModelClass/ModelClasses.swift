//
//  ModelClasses.swift
//  CVCreater
//
//  Created by Saranya Rathinasamy on 30/05/19.
//  Copyright © 2019 Infosys. All rights reserved.
//

import Foundation
open class ModelClasses
{
    static let sharedInstance = ModelClasses()

    //Creating PersonalInfo Class Object
    struct PersonalInfo {
        var firstName:String = ""
        var lastName:String = ""
        var phoneNumber:String = ""
        var emailId:String = ""
        var address1:String = ""
        var address2:String = ""
        var dob:String = ""
    }

    //Declaring Personal Info Var
    var personalInfoObject = PersonalInfo()

    //Creating personal Info Dict for writing
    func getPersonalInfoDict() -> [String:String] {
        return["firstName":personalInfoObject.firstName,
               "lastName":personalInfoObject.lastName,
               "phoneNumber":personalInfoObject.phoneNumber,
               "emailId":personalInfoObject.emailId,
               "address1":personalInfoObject.address1,
               "address2":personalInfoObject.address2,
               "dob":personalInfoObject.dob
        ] ;
    }

    //Creating personal Info object from dict received
    func setPersonalInfoDict(data:[String:String])->PersonalInfo {
        personalInfoObject.firstName = data["firstName"] ?? ""
        personalInfoObject.lastName = data["lastName"] ?? ""
        personalInfoObject.phoneNumber = data["phoneNumber"] ?? ""
        personalInfoObject.emailId = data["emailId"] ?? ""
        personalInfoObject.address1 = data["address1"] ?? ""
        personalInfoObject.address2 = data["address2"] ?? ""
        personalInfoObject.dob = data["dob"] ?? ""

        return personalInfoObject
    }

    //Creating Educational Info Class Object
    struct EducationalInfo {
        var universityName:String = ""
        var courseName:String = ""
        var fromDate:String = ""
        var toDate:String = ""
    }

    //Declaring Educational Info Var
    var educationalInfoObject = EducationalInfo()

    //Creating Employement Info Dict for writing
    func getEducationalInfoDict(educationalInfo:EducationalInfo) -> [String:String] {
        return["universityName":educationalInfo.universityName,
               "courseName":educationalInfo.courseName,
               "fromDate":educationalInfo.fromDate,
               "toDate":educationalInfo.toDate
        ] ;
    }

    //Creating educational Info object from dict received
    func setEducationalInfoDict(data:[String:String])->EducationalInfo {

        var educationObj = EducationalInfo()
        educationObj.universityName = data["universityName"] ?? ""
        educationObj.courseName = data["courseName"] ?? ""
        educationObj.fromDate = data["fromDate"] ?? ""
        educationObj.toDate = data["toDate"] ?? ""

        return educationObj
    }

    //Creating Topics Of Knowledge Class Object
    struct TopicsOfKnowledge {
        var areaOfExpertise:String = ""
        var experience:String = ""
    }

    //Declaring Topics Of Knowledge Var
    var topicsOfKnowledgeObject = TopicsOfKnowledge()

    //Creating Topics Of Knowledge Dict for writing
    func getTopicsOfKnowledgeDict(tok:TopicsOfKnowledge) -> [String:String] {
        return["areaOfExpertise":tok.areaOfExpertise,
               "experience":tok.experience
        ] ;
    }

    //Creating Topics Of Knowledge object from dict received
    func setTopicOfKnowledgeDict(data:[String:String])->TopicsOfKnowledge {

        var tokObj = TopicsOfKnowledge()
        tokObj.areaOfExpertise = data["areaOfExpertise"] ?? ""
        tokObj.experience = data["experience"] ?? ""

        return tokObj
    }

    //Creating ProjectDetails Class Object
    struct ProjectDetails {
        var projectName:String = ""
        var technology:String = ""
        var duration:String = ""
        var description:String = ""

    }

    //Declaring ProjectDetails Var
    var projectDetailsObject = ProjectDetails()

    //Creating ProjectDetails Dict for writing
    func getProjectDetailsDict(project:ProjectDetails) -> [String:String] {
        return["projectName":project.projectName,
               "technology":project.technology,
               "duration":project.duration,
               "description":project.description
        ] ;
    }

    //Creating ProjectDetails object from dict received
    func setProjectDetailsDict(data:[String:String])->ProjectDetails {

        var projectDetailsObj = ProjectDetails()
        projectDetailsObj.projectName = data["projectName"] ?? ""
        projectDetailsObj.technology = data["technology"] ?? ""
        projectDetailsObj.duration = data["duration"] ?? ""
        projectDetailsObj.description = data["description"] ?? ""

        return projectDetailsObj
    }

    //Creating CurrentCompanyDetails Class Object
    struct CurrentCompanyDetails {
        var companyName:String = ""
        var designation:String = ""
        var experience:String = ""
        var achievements:String = ""

    }

    //Declaring CurrentCompanyDetails Var
    var currentCompanyDetailsObject = CurrentCompanyDetails()

    //Creating CurrentCompanyDetails Dict for writing
    func getCurrentCompanyDetailsDict(company:CurrentCompanyDetails) -> [String:String] {
        return["companyName":company.companyName,
               "designation":company.designation,
               "experience":company.experience,
               "achievements":company.achievements
        ] ;
    }

    //Creating CurrentCompanyDetails object from dict received
    func setCurrentCompanyDetailsDict(data:[String:String])->CurrentCompanyDetails {

        var currentCompanyObj = CurrentCompanyDetails()
        currentCompanyObj.companyName = data["companyName"] ?? ""
        currentCompanyObj.designation = data["designation"] ?? ""
        currentCompanyObj.experience = data["experience"] ?? ""
        currentCompanyObj.achievements = data["achievements"] ?? ""

        return currentCompanyObj
    }
    
}
