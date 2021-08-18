//
//  AllGroupsCell.swift
//  Soul
//
//  Created by Нина Лукашова on 16.08.2021.
//

import Foundation

import UIKit

final class AddAllGroupsCell: UITableViewCell {

    @IBOutlet var lablecell: UILabel!
    @IBOutlet var itemCell: UIImageView!
    
    static let identifier = "AddAllGroupsCell"
    
    func configure(allGroups: GroupModel){
       
        lablecell.text = allGroups.nameGroup
        itemCell.image = UIImage (named: allGroups.avatarGroup)
        }
}
