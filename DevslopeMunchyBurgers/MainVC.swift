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
        
        ds.delegate = self
        ds.loadDeliciousBurgerData()
        ds.burgerArray.shuffle()
        
        collectionView.delegate = self
        collectionView.dataSource = self

        headerView.addDropShadow()
        
        /*
        let nib = UINib(nibName: "BurgerCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "BurgerCell")
         */
        
        collectionView.register(BurgerCell.self)
    }
    
    func deliciousBurgerDataLoaded() {
        print("Delicious Burger Data Loaded!")
        collectionView.reloadData()
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
        
        
//        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BurgerCell", for: indexPath) as? BurgerCell {
//            
//            cell.configureCell(burger: ds.burgerArray[indexPath.row])
//            return cell
//        }
//        
//        return UICollectionViewCell()
        
        let cell = collectionView.dequeueReusableCell(forIndexPath: indexPath) as BurgerCell
        cell.configureCell(burger: ds.burgerArray[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? BurgerCell {
            cell.shake()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 95, height: 95)
    }
}




























