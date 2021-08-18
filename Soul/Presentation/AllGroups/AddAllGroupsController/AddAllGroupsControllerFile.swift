//
//  AllGroupsController.swift
//  Soul
//
//  Created by Нина Лукашова on 16.08.2021.
//

import UIKit

final class AddAllGroupsController: UIViewController {
    

    var Allgroups = [GroupModel]()
      

    @IBOutlet var TableViewtwo: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Allgroups = GroupStorage().allGroups
        
        TableViewtwo.dataSource = self
    }
}

extension AddAllGroupsController: UITabBarDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Allgroups.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
          let cell = tableView.dequeueReusableCell(withIdentifier: AddAllGroupsCell.identifier, for: indexPath) as?
            AddAllGroupsCell
           
        else{
          return UITableViewCell()
        }
        Allgroups = Allgroups.sorted(by: { $0.nameGroup < $1.nameGroup})
        let group = Allgroups[indexPath.row]
        cell.configure(allGroups: group)
        return cell
        
    }
    
}
