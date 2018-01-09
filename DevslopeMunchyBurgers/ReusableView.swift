//
//  ReusableView.swift
//  DevslopeMunchyBurgers
//
//  Created by Chou Vue on 1/9/18.
//  Copyright © 2018 VUE. All rights reserved.
//

import UIKit

protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        
        return String(describing: self)
    }
}
