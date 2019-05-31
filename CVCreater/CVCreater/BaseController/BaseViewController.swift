//
//  BaseViewController.swift
//  CVCreater
//
//  Created by Saranya Rathinasamy on 30/05/19.
//  Copyright © 2019 Infosys. All rights reserved.
//

import Foundation
import UIKit

//Protocol to do barbutton actions in respecive controllers
protocol saveProtocol {
    func saveObject()
    func writeToUrl()

}
class BaseViewController: UIViewController {

    //Single Navigation item - Right bar item - Save
    func setRightNavigationItem(title:String) -> Void {

        let saveBarButtonItem = UIBarButtonItem.init(title: title, style: .done, target: self, action: #selector(saveSelector))
        self.navigationItem.rightBarButtonItem = saveBarButtonItem

    }
    //Single Navigation item - Left bar item - Back
    func setLeftNavigationItem(title:String) -> Void {

        let backBarButtonItem = UIBarButtonItem.init(title: title, style: .plain, target: self, action: #selector(backButtonSelector))
        self.navigationItem.leftBarButtonItem = backBarButtonItem

    }
    var saveDelegate:saveProtocol?

    //Save button Action
    @objc func saveSelector() {
        saveDelegate?.writeToUrl()
    }

    //Back button Action
    @objc func backButtonSelector() {
        saveDelegate?.saveObject()
    }

    
}
