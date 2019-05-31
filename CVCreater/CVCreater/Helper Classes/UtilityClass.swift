//
//  UtilityClass.swift
//  CVCreater
//
//  Created by Saranya Rathinasamy on 30/05/19.
//  Copyright © 2019 Infosys. All rights reserved.
//

import Foundation
import UIKit
open class UtilityClass
{
    static let sharedInstance = UtilityClass()

    //Function to display Alert
    func displayAlert(title:String,msg:String)  {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            switch action.style{
            case .default:
                print("default")

            case .cancel:
                print("cancel")

            case .destructive:
                print("destructive")

            @unknown default:
                print("Error")
            }}))
        getRootViewController()?.present(alert, animated: true, completion: nil)
    }

    //Function to get topView Controller in Window
    func getRootViewController() -> UIViewController?{
        if var topController = UIApplication.shared.keyWindow?.rootViewController {
            if let presentedViewController = topController.presentedViewController {
                topController = presentedViewController
                return topController
            }
            else{
                return  topController
            }
        }
        else
        {
            return nil
        }
    }

    //Func to get new file path created in document directory
    func getDocumentsDirectory() -> URL {

        //For retrieving from local disk
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let filename = paths[0].appendingPathComponent("ResumeData.txt")
        return filename

        //For retrieving from URLs
        //        let path = "https://gist.github.com/SaranyaR06/ResumeData"
        //        let url = URL.init(fileURLWithPath:path)
        //        return url
        
    }
}

