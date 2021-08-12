//
//  MyGroupsViewController.swift
//  Soul
//
//  Created by Нина Лукашова on 12.08.2021.
//

import UIKit

class MyGroupsViewController: UIViewController {

    @IBOutlet var tableViewtwo: UITableView!
    
    let MyGroups = ["Семья","Работа","Учеба"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewtwo.delegate = self
        tableViewtwo.dataSource = self
        
    }

}

extension MyGroupsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        MyGroups.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyGroupsTableViewCell.idetifier) as! MyGroupsTableViewCell
        cell.configure(imageName: "dyha", title: MyGroups[indexPath.row])
    return cell
    }
    
}
