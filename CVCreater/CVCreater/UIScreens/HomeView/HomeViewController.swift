//
//  HomeViewController.swift
//  CVCreater
//
//  Created by Saranya Rathinasamy on 29/05/19.
//  Copyright © 2019 Infosys. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.addTapGesture()
        self.navigationItem.title = "Home"
    }
    @IBOutlet var resumeCreater: UIImageView!

    //Adding Tap gesture for CV creater image
    func addTapGesture() -> Void {
        let tapResume = UITapGestureRecognizer(target: self, action:#selector(openResumeTemplate))
        
        resumeCreater.isUserInteractionEnabled = true
        resumeCreater.addGestureRecognizer(tapResume)
    }

    //Action method - on tapping image (CV creater)
    @objc func openResumeTemplate() -> Void {
        HomeViewModel.sharedInstance.initialLoadOfCVData()
        performSegue(withIdentifier: "pushDashboard", sender: self)
    }
}

