//
//  CatagoriesViewController.swift
//  Kenakata
//
//  Created by Md Sifat on 28/9/20.
//  Copyright © 2020 Md Sifat. All rights reserved.
//

import UIKit

class CatagoriesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    @IBOutlet weak var CollectionView: UICollectionView!
    
    let catagoryName = ["Men", "Women", "Kids", "Cosmetics", "Accessories", "Miscellaneous", "Watch"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CollectionView.dataSource = self
        CollectionView.delegate = self

    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return catagoryName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CatagoriesCollectionViewCell
        cell.catagoryImageView.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        cell.catagoryImageView.layer.cornerRadius = 10.0
        cell.catagoryImageView.clipsToBounds = true
        cell.catagoryNameLbl.text = catagoryName[indexPath.item]
        return cell
    }
    

}
