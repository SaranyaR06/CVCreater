//
//  DashboardView.swift
//  CVCreater
//
//  Created by Saranya Rathinasamy on 30/05/19.
//  Copyright © 2019 Infosys. All rights reserved.
//

import Foundation
import UIKit

//Protocol for navigating to option screens
protocol navigationProtocol {
    func navigateToOptions(index:IndexPath) -> Void
}
class DashboardView: UIView,UITableViewDelegate,UITableViewDataSource {

    //Enums can be used for loading options
    enum options: String{
        case PersonalInformation
        case Education
        case TopicsOfKnowledge
    }
    var optionDelegate:navigationProtocol?

    @IBOutlet weak var dashboardOptionsTable: UITableView?
    let cellId = "indexCell"

    var dashboardOptions = ["Personal Information","Education","Topics of Knowledge","Past Project","Current/latest Company Details","Additional Info"];

    //TableView Datasource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dashboardOptions.count
    }

    //TableView Delegates
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = UITableViewCell.init(style: .default, reuseIdentifier: cellId)
        tableViewCell.textLabel?.text = dashboardOptions[indexPath.row]
        return tableViewCell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        optionDelegate?.navigateToOptions(index: indexPath)
    }

}
