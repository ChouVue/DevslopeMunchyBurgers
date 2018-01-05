//
//  DropShadow.swift
//  DevslopeMunchyBurgers
//
//  Created by Chou Vue on 1/5/18.
//  Copyright © 2018 VUE. All rights reserved.
//

import UIKit

protocol DropShadow{

}

extension DropShadow where Self: UIView{
    
    func addDropShadow() {
        //IMPLEMENTATION
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
    }
}


