//
//  MyGroupsTableViewCell.swift
//  Soul
//
//  Created by Нина Лукашова on 12.08.2021.
//

import UIKit

class MyGroupsTableViewCell: UITableViewCell {
    
    static let idetifier = "MyGroupsTableViewCell"
    
    @IBOutlet private var lableCell: UILabel!
    @IBOutlet private var itemCell: UIImageView!
    
    func configure(imageName: String, title: String){
        itemCell.image = UIImage (named: "dyha")
        lableCell.text = title
        
    }
 }

