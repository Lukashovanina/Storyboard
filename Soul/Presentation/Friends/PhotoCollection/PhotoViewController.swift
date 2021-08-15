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
    func collectionView(_collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath){
    }
    
}
extension PhotoViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotoViewCell.identifier, for:  indexPath) as! PhotoViewCell
        
        let photo = photos[indexPath.item]
        cell.configure(photoModel: photo)
        
        return cell
    }
    
}

