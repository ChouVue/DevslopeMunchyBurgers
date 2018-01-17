//
//  UICollectionView+Ext.swift
//  DevslopeMunchyBurgers
//
//  Created by Chou Vue on 1/9/18.
//  Copyright © 2018 VUE. All rights reserved.
//

import UIKit

extension UICollectionView {

//Creating a Generic UICollectionViewCell
    func register<T: UICollectionViewCell> (_: T.Type) where T: ReusableView, T: NibLoadableView {
        
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }

    func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
        
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath as IndexPath) as? T else{
            
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        
        return cell
    }
}

extension UICollectionViewCell: ReusableView {}




