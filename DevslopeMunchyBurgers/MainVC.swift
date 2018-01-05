//
//  MainVC.swift
//  DevslopeMunchyBurgers
//
//  Created by Chou Vue on 1/4/18.
//  Copyright © 2018 VUE. All rights reserved.
//

import UIKit

class MainVC: UIViewController, DataServiceDelegate {

    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var ds: DataService = DataService.instance
    
    override func viewDidLoad() {
        super.viewDidLoad()

        headerView.addDropShadow()
    }
    
    func deliciousBurgerDataLoaded() {
        print("Delicious Burger Data Loaded!")
    }
}

extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ds.burgerArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BurgerCell", for: indexPath) as? BurgerCell {
            
            cell.configureCell(burger: ds.burgerArray[indexPath.row])
            return cell
        }
        
        return UICollectionViewCell()
    }
}
