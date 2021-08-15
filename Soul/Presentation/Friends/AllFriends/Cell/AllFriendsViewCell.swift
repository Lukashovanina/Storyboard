//
//  AllFriendsViewCell.swift
//  Soul
//
//  Created by Нина Лукашова on 15.08.2021.
//


import UIKit

class AllFriendsViewCell: UITableViewCell {

    static let identifier = "AllFriendsViewCell"
    

    @IBOutlet var friendImageView: UIImageView!
    @IBOutlet var friendNameLable: UILabel!
    
    func configure(allFriends: FriendModel){
        friendImageView.image = UIImage (named: allFriends.avatarName)
        friendNameLable.text = allFriends.nicName
        
    }
}
