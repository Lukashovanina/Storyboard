//
//  FavoriteFriendsTableViewCell.swift
//  Soul
//
//  Created by Нина Лукашова on 12.08.2021.
//

import UIKit

class FavoriteFriendsTableViewCell: UITableViewCell {

    static let identifier = "FavoriteFriendsTableViewCell"
    
    @IBOutlet private var titleLableCell: UILabel!
    @IBOutlet private var imageViewCell: UIImageView!
    
    func configure(favoriteFriends: FriendModel){
        imageViewCell.image = UIImage (named: favoriteFriends.avatarName)
        titleLableCell.text = favoriteFriends.nicName
        
    }
}

