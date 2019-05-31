//
//  AdditionalInfoViewModel.swift
//  CVCreater
//
//  Created by  Saranya Rathinasamy on 31/05/19.
//  Copyright © 2019 Infosys. All rights reserved.
//

import Foundation
import UIKit
class AdditionalInfoViewModel {
    class func saveData(additionaInfoViewObject:AdditionalInfoView) {

        //Saving CurrentCompanyView to ModelClass
        ResumeDataModel.sharedInstance.additionalInfo = additionaInfoViewObject.additionalInfo.text ?? ""
    }

    class func loadData(additionaInfoViewObject:AdditionalInfoView){

        //Loading data from retrieved URL data
        additionaInfoViewObject.additionalInfo.text = ResumeDataModel.sharedInstance.additionalInfo
    }
}
