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
    
    func configure (photoModel: PhotoModel) {
        photoNameLable.text = photoModel.namePhoto
        photoImageView.image = UIImage(named: photoModel.fileName)
    }
}
