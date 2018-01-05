//
//  Burger.swift
//  DevslopeMunchyBurgers
//
//  Created by Chou Vue on 1/5/18.
//  Copyright © 2018 VUE. All rights reserved.
//

import Foundation

enum BurgerShell: Int {
    case wheat = 1
    case corn = 2
}

enum BurgerProtein: String {
    case Beef = "Beef"
    case Chicken = "Chicken"
    case Pork = "Pork"
    case Fish = "Fish"
}

enum BurgerCondiment: Int {
    case Loaded = 1
    case Plain = 2
}

struct Burger {
    private var _id: Int!
    private var _productName: String!
    private var _shellId: BurgerShell!
    private var _proteinId: BurgerProtein!
    private var _condimentId: BurgerCondiment!
    
    var id: Int {
        return _id
    }
    
    var productName: String {
        return _productName
    }
    
    var shellId: BurgerShell {
        return _shellId
    }
    
    var proteinId: BurgerProtein {
        return _proteinId
    }
    
    var condimentId: BurgerCondiment {
        return _condimentId
    }
    
    init(id: Int, productName: String, shellId: Int, proteinId: Int, condimentId: Int) {
        _id = id
        _productName = productName
        
        //shellId (BurgerShell)
        switch shellId {
        case 2:
            self._shellId = BurgerShell.corn
        default:
            self._shellId = BurgerShell.wheat
        }
        
        //proteinId (BurgerProtein)
        switch proteinId {
        case 4:
            self._proteinId = BurgerProtein.Fish
        case 3:
            self._proteinId = BurgerProtein.Pork
        case 2:
            self._proteinId = BurgerProtein.Chicken
        default:
            self._proteinId = BurgerProtein.Beef
        }
        
        //condimentId (BurgerCondiment)
        switch condimentId {
        case 2:
            self._condimentId = BurgerCondiment.Plain
        default:
            self._condimentId = BurgerCondiment.Loaded
        }
    }
}
