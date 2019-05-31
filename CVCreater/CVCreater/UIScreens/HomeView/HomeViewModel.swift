//
//  HomeViewModel.swift
//  CVCreater
//
//  Created by  Saranya Rathinasamy on 31/05/19.
//  Copyright © 2019 Infosys. All rights reserved.
//

import Foundation
import UIKit

class HomeViewModel {

    static let sharedInstance = HomeViewModel()

    func initialLoadOfCVData(){

        //Invoking network methods for initial load - to fetch from URL
        NetworkManager.sharedInstance.initialLoadForCV(url:UtilityClass.sharedInstance.getDocumentsDirectory(), completionHandlers:({(data:[String:Any]?,url:URLResponse?,error:Error?) in
            if let dataObj = data{

                //Populating the received Data to Singleton Model classes
                ResumeDataModel.sharedInstance.personalInfo = dataObj["personalInfo"] as! [String : String]
                ResumeDataModel.sharedInstance.additionalInfo = dataObj["additionalInfo"] as! String
                ResumeDataModel.sharedInstance.education = dataObj["education"] as! [[String : String]]
                ResumeDataModel.sharedInstance.pastExp = dataObj["pastExp"] as! [String : String]
                ResumeDataModel.sharedInstance.technicalExpertise = dataObj["technicalExpertise"] as! [[String : String]]
                ResumeDataModel.sharedInstance.projectExp = dataObj["projectExp"] as! [[String : String]]

            }
            else {

                //No data saved in server
                if let _ = error{
                print("Error while Fetching - Initial Load")
            }
            }
        }))
    }

}
