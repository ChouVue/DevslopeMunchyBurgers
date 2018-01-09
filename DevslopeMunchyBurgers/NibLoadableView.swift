//
//  NibLoadableView.swift
//  DevslopeMunchyBurgers
//
//  Created by Chou Vue on 1/9/18.
//  Copyright © 2018 VUE. All rights reserved.
//

import UIKit


protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    
    static var nibName: String {
        
        return String(describing: self)
    }
}


