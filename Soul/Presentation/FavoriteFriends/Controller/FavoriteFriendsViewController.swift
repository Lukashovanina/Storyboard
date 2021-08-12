//
//  FavoriteFriendsViewController.swift
//  Soul
//
//  Created by Нина Лукашова on 12.08.2021.
//

import UIKit

class FavoriteFriendsViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    let favoriteFriends = ["  ","  ","  "]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
     }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToFriends" {
            let destinationVC = segue.destination
            guard
            let indexSelectCell = tableView.indexPathForSelectedRow?.row
            else { return }
            destinationVC.title = favoriteFriends[indexSelectCell]
            
        }
    }
}

extension FavoriteFriendsViewController: UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        favoriteFriends.count
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FavoriteFriendsTableViewCell.identifier) as! FavoriteFriendsTableViewCell
        cell.configure(imageName: "dyha", title: favoriteFriends[indexPath.row])
        return cell
    }
    
}

