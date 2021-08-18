//
//  AllFriendsViewController.swift
//  Soul
//
//  Created by Нина Лукашова on 15.08.2021.
//

import UIKit

final class AllFriendsViewController: UIViewController {
    
  
    @IBOutlet var tableView: UITableView!
    
    let storage: FriendStorage = FriendStorage()
    var allFriends: [FriendModel] = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        allFriends = storage.allFriends
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let header = UIView(frame: CGRect(origin: .zero, size: CGSize(width: 0, height: 50)))
        header.backgroundColor = .cyan
        tableView.tableHeaderView = header
    }
}
extension AllFriendsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        allFriends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: AllFriendsViewCell.identifier) as! AllFriendsViewCell
        
        cell.configure(allFriends: allFriends[indexPath.row])
        return cell
    }
    
    func tableView (_tableViev: UITableView, didSelectRowAt indexPath: IndexPath ) {
    }
}

