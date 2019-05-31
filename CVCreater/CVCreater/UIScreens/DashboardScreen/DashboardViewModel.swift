//
//  DashboardViewModel.swift
//  CVCreater
//
//  Created by Saranya Rathinasamy on 30/05/19.
//  Copyright © 2019 Infosys. All rights reserved.
//

import Foundation
import UIKit
class DashboardViewModel {

    //Saving data to server
    class func finalSave()
    {
//        let path = "https://gist.github.com/SaranyaR06/9ac38003d095d7d7889195ec761e73aa"
//        let path = "https://gist.github.com/SaranyaR06/644c200f79200eae66a15f2f3aab0695"
        var url:URL

            url = UtilityClass.sharedInstance.getDocumentsDirectory()

        //Calling network methods for save
        NetworkManager.sharedInstance.requestForWriting(url: url, dataDict: ResumeDataModel.sharedInstance.getResumeDataDictionary(), completionHandlers:({(data:[String:Any]?,url:URLResponse?,error:Error?) in

            if let _ = error{
                print("Error while Saving")
                UtilityClass.sharedInstance.displayAlert(title: "Error", msg: "Error while Saving")
            }
            else{
                UtilityClass.sharedInstance.displayAlert(title: "Success", msg: "Data Saved Successfully")

            }
            }))
    }
}
