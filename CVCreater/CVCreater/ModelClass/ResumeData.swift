//
//  ResumeData.swift
//  CVCreater
//
//  Created by Saranya Rathinasamy on 29/05/19.
//  Copyright © 2019 Infosys. All rights reserved.
//

import Foundation
import UIKit
class ResumeDataModel:NSObject
{
    var personalInfo:[String:String] = [:]
    var education:[[String:String]] = []
    var technicalExpertise:[[String:String]] = []
    var projectExp:[[String:String]] = []
    var pastExp:[String:String] = [:]
    var additionalInfo:String = ""
    
    static let sharedInstance = ResumeDataModel()

    //Converting to Dict
    func getResumeDataDictionary() -> [String:Any] {
        return["personalInfo":personalInfo,
               "education":education,
               "technicalExpertise":technicalExpertise,
               "projectExp":projectExp,
               "pastExp":pastExp,
               "additionalInfo":additionalInfo
        ] ;
    }
    //Retrieve from Dict
    func setResumeDataDictionary(data:[String:Any]) {
        personalInfo = data["personalInfo"] as? [String:String] ?? [:]
        education = data["education"] as? [[String:String]] ?? []
        technicalExpertise = data["technicalExpertise"] as? [[String:String]] ?? []
        projectExp = data["projectExp"] as? [[String:String]] ?? []
        pastExp = data["pastExp"] as? [String:String] ?? [:]
        additionalInfo = data["additionalInfo"] as? String ?? ""
    }

    
   
}
