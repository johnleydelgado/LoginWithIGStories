//
//  cell.swift
//  TestApp
//
//  Created by Rapha Solution on 10/17/18.
//  Copyright © 2018 Rapha Solution. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
 let imageArray : [UIImage] = [UIImage(named:"img_01")!,UIImage(named:"img_02")!,UIImage(named:"img_03")!,UIImage(named:"img_04")!,UIImage(named:"img_01")!,UIImage(named:"img_02")!,UIImage(named:"img_03")!,UIImage(named:"img_04")!]
}

extension CustomCell:UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "storyCell", for: indexPath) as! HomepageCell
        cell.imageView.image = imageArray[indexPath.item]
        
        return cell
        
    } 
}

extension CustomCell:UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let rowItem:CGFloat = 4
        let padding:CGFloat = 5
        let itemWidth = (collectionView.bounds.width/rowItem) - padding
        let itemHeight = collectionView.bounds.height - (2 * padding)
        return CGSize(width: itemWidth, height: itemHeight)
    }
    
}
