//
//  BurgerCell.swift
//  DevslopeMunchyBurgers
//
//  Created by Chou Vue on 1/5/18.
//  Copyright © 2018 VUE. All rights reserved.
//

import UIKit

class BurgerCell: UICollectionViewCell, NibLoadableView {

    @IBOutlet weak var burgerImg: UIImageView!
    @IBOutlet weak var burgerLbl: UILabel!
    
    var burger: Burger!
    
    func configureCell(burger: Burger) {
        self.burger = burger
        
        burgerImg.image = UIImage(named: burger.proteinId.rawValue)
        burgerLbl.text = burger.productName
    }

}
