//
//  PhotoViewCell.swift
//  Soul
//
//  Created by Нина Лукашова on 15.08.2021.
//

import UIKit

final class PhotoViewCell: UICollectionViewCell{
    
    static var identifier: String = "PhotoViewcell"
    

    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var photoNameLable: UILabel!
    
    func configure (photoCollectionModel: PhotoCollectionModel) {
        photoNameLable.text = photoCollectionModel.namePhoto
        photoImageView.image = UIImage(named: photoCollectionModel.fileName)
    }
}
