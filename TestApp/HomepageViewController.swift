//
//  HomepageViewController.swift
//  TestApp
//
//  Created by Rapha Solution on 10/17/18.
//  Copyright © 2018 Rapha Solution. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class HomepageViewController: UICollectionViewController {

    let imageArray : [UIImage] = [UIImage(named:"img_01")!,UIImage(named:"img_02")!,UIImage(named:"img_03")!,UIImage(named:"img_04")!]
    override func viewDidLoad() {
        super.viewDidLoad()

//        /self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView?.dataSource = self
        collectionView?.delegate = self

    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return imageArray.count
    }

//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//       // let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! cell
//        //cell.imageView.image = imageArray[indexPath.item]
//        // Configure the cell
//    
//        return cell
//    }


}
