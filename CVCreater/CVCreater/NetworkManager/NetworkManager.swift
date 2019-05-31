//
//  NetworkManager.swift
//  CVCreater
//
//  Created by Saranya Rathinasamy on 30/05/19.
//  Copyright © 2019 Infosys. All rights reserved.
//

import Foundation
import UIKit
open class NetworkManager
{
    static let sharedInstance = NetworkManager()

    typealias CompletionHandler = (_ data: [String:Any]?,_ response: URLResponse?,_ error: Error?)->()

    func requestForWriting(url:URL,dataDict:[String:Any],completionHandlers:@escaping(CompletionHandler)){
        NetworkRequestClass.sharedInstance.saveData(url: url, dataDict: dataDict, completionHandler: completionHandlers)
    }

    func initialLoadForCV(url:URL,completionHandlers:@escaping(CompletionHandler)) {
        NetworkRequestClass.sharedInstance.retrieveData(url: url, completionHandler: completionHandlers)
    }
    
}
