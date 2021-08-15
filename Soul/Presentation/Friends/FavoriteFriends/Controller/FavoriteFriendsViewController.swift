//
//  FavoriteFriendsViewController.swift
//  Soul
//
//  Created by Нина Лукашова on 12.08.2021.
//

import UIKit

class FavoriteFriendsViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    let storage: FriendStorage = FriendStorage()
    var favoriteFriends: [FriendModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favoriteFriends = storage.friend
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToFriends" {
            let destinationVC = segue.destination
            guard
                let indexSelectCell = tableView.indexPathForSelectedRow?.row
            else { return }
            destinationVC.title = favoriteFriends[indexSelectCell].nicName
            
        }
    }
    
    @IBAction func addFriend(_ segue: UIStoryboardSegue) {
        guard
            let sourseController = segue.source as? AllFriendsViewController,
            let indexSelectCell = sourseController.tableView.indexPathForSelectedRow
        
        else { return }
        
        let friend = sourseController.allFriends[indexSelectCell.row]
        if !favoriteFriends.contains (where: { friend.nicName == $0.nicName}) {
            favoriteFriends.append(friend)
        }
        tableView.reloadData()
    }
}

extension FavoriteFriendsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        favoriteFriends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FavoriteFriendsTableViewCell.identifier) as! FavoriteFriendsTableViewCell
        cell.configure(favoriteFriends: favoriteFriends[indexPath.row])
        return cell
    }
    //    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    //        // Если была нажата кнопка «Удалить»
    //        if editingStyle == .delete {
    //            // Удаляем город из массива
    //            favoriteFriends.remove(at: indexPath.row)
    //            // И удаляем строку из таблицы
    //            tableView.deleteRows(at: [indexPath], with: .fade)
    //        }
    //    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let delete = deleteAction(at: indexPath)
        
        return UISwipeActionsConfiguration(actions: [delete])
    }
    
    
    
    func deleteAction(at indexPath: IndexPath) ->UIContextualAction{
        let action = UIContextualAction(style: .destructive, title: "Delete") { ( action, view, completion) in
            // Удаляем город из массива
            self.favoriteFriends.remove(at: indexPath.row)
            // И удаляем строку из таблицы
            self.tableView.deleteRows(at: [indexPath], with: .fade)
        }
        action.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0.4911999106, alpha: 1)
        action.image = UIImage (systemName: "trash" )
        return action
    }
    
}

