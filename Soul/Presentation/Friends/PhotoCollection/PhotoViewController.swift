//
//  PhotoViewController.swift
//  Soul
//
//  Created by Нина Лукашова on 15.08.2021.
//

import UIKit

final class PhotoViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!
   
    
    var photos: [PhotoModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
}
extension PhotoViewController: UICollectionViewDelegate {
    
}
extension PhotoViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        photos.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotoViewCell.identifier, for:  indexPath) as! PhotoViewCell
        let photoModel = photos[indexPath.item]
        cell.configure(photoModel: photoModel)
        
        return cell
    }
    
}

