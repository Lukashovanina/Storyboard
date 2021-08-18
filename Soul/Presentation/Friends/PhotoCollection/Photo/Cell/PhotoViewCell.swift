//
//  PhotoViewCell.swift
//  Soul
//
//  Created by Нина Лукашова on 15.08.2021.
//

import UIKit

final class PhotoViewCell: UICollectionViewCell{


    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var photoNameLable: UILabel!
    
    static let identifier = "PhotoViewCell"
    
    func configure (photoCollectionModel: PhotoCollectionModel) {
        photoNameLable.text = photoCollectionModel.nicName
        photoImageView.image = UIImage(named: photoCollectionModel.fileName)
    }
    
  }

