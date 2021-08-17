//
//  AllGroupsCell.swift
//  Soul
//
//  Created by Нина Лукашова on 16.08.2021.
//

import Foundation

import UIKit

final class AddAllGroupsCell: UITableViewCell {
    
    
    static let idetifier = "AddAllGroupsCell"

    @IBOutlet var lablecell: UILabel!
    @IBOutlet var itemCell: UIImageView!
    
    func configure(allGroups: GroupModel){
       
        lablecell.text = allGroups.nameGroup
        itemCell.image = UIImage (named: allGroups.avatarGroup)
        }
}
