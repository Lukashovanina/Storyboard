//
//  MyGroupsViewController.swift
//  Soul
//
//  Created by Нина Лукашова on 12.08.2021.
//

import UIKit

class MyGroupsViewController: UIViewController {
    
    @IBOutlet var tableViewtwo: UITableView!
    
    let storage: GroupStorage = GroupStorage()
    
    private var MyGroups: [GroupModel] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MyGroups = storage.group
        tableViewtwo.delegate = self
        tableViewtwo.dataSource = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToGroup" {
            
            guard
                let destinationVC = segue.destination as? MyGroupsViewController,               let indexSelectCell = tableViewtwo.indexPathForSelectedRow?.row
            else { return }
            
            let selectGroup = MyGroups[indexSelectCell]
            destinationVC.title = MyGroups[indexSelectCell].avatarGroup

        }
    }
    
    @IBAction func addgroup(_ segue: UIStoryboardSegue) {
        guard
            let sourseController = segue.source as? AddAllGroupsController,
            let indexSelectCell = sourseController.TableViewtwo.indexPathForSelectedRow

        else { return }
        let groups = sourseController.Allgroups[indexSelectCell.row]
        if !MyGroups.contains(where: {groups.nameGroup == $0.nameGroup}) {
            MyGroups.append(groups)
        }
        tableViewtwo.reloadData()
    }
}

extension MyGroupsViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        MyGroups.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyGroupsTableViewCell.idetifier) as! MyGroupsTableViewCell
        cell.configure(group: MyGroups[indexPath.row])
        return cell
        
    }
    
    func tableView (_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let delete = deleteAction(at: indexPath)
        
        return UISwipeActionsConfiguration(actions: [delete])
    }
    
    
    func deleteAction(at indexPath: IndexPath) ->UIContextualAction{
        let action = UIContextualAction(style: .destructive, title: "Delete") { ( action, view, completion) in
            // Удаляем город из массива
            self.MyGroups.remove(at: indexPath.row)
            // И удаляем строку из таблицы
            self.tableViewtwo.deleteRows(at: [indexPath], with: .fade)
        }
        action.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0.4911999106, alpha: 1)
        action.image = UIImage (systemName: "trash" )
        return action
    }
}
