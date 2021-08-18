//
//  MyGroupsTableViewCell.swift
//  Soul
//
//  Created by Нина Лукашова on 12.08.2021.
//

import UIKit

class MyGroupsTableViewCell: UITableViewCell {
    
    static let identifier = "MyGroupsTableViewCell"
    
    @IBOutlet private var lableCell: UILabel!
    @IBOutlet private var itemCell: UIImageView!
    
    func configure(group: GroupModel){
        itemCell.image = UIImage (named: group.avatarGroup)
        lableCell.text = group.nameGroup
        
    }
 }

