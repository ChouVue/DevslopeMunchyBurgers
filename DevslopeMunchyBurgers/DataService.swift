//
//  DataService.swift
//  DevslopeMunchyBurgers
//
//  Created by Chou Vue on 1/5/18.
//  Copyright © 2018 VUE. All rights reserved.
//

import Foundation

protocol DataServiceDelegate: class  {
    func deliciousBurgerDataLoaded()
}

class DataService {
    
    static let instance = DataService()
    
    weak var delegate: DataServiceDelegate?
    
    var burgerArray: Array<Burger> = []
    
    func loadDeliciousBurgerData() {
        
        //Beef Burger
        burgerArray.append(Burger(id: 1, productName: "Loaded Wheat Beef Burger", shellId: 1, proteinId: 1, condimentId: 1))
        burgerArray.append(Burger(id: 2, productName: "Loaded Corn Beef Burger", shellId: 2, proteinId: 1, condimentId: 1))
        burgerArray.append(Burger(id: 3, productName: "Plain Wheat Beef Burger", shellId: 1, proteinId: 1, condimentId: 2))
        burgerArray.append(Burger(id: 4, productName: "Plain Corn Beef Burger", shellId: 2, proteinId: 1, condimentId: 2))
        
        //Chicken Burger
        burgerArray.append(Burger(id: 5, productName: "Loaded Wheat Chicken Burger", shellId: 1, proteinId: 2, condimentId: 1))
        burgerArray.append(Burger(id: 6, productName: "Loaded Corn Chicken Burger", shellId: 2, proteinId: 2, condimentId: 1))
        burgerArray.append(Burger(id: 7, productName: "Plain Wheat Chicken Burger", shellId: 1, proteinId: 2, condimentId: 2))
        burgerArray.append(Burger(id: 8, productName: "Plain Corn Chicken Burger", shellId: 2, proteinId: 2, condimentId: 2))
        
        //Pork Burger
        burgerArray.append(Burger(id: 9, productName: "Loaded Wheat Pork Burger", shellId: 1, proteinId: 3, condimentId: 1))
        burgerArray.append(Burger(id: 10, productName: "Loaded Corn Pork Burger", shellId: 2, proteinId: 3, condimentId: 1))
        burgerArray.append(Burger(id: 11, productName: "Plain Wheat Pork Burger", shellId: 1, proteinId: 3, condimentId: 2))
        burgerArray.append(Burger(id: 12, productName: "Plain Corn Pork Burger", shellId: 2, proteinId: 3, condimentId: 2))
        
        //Fish Burger
        burgerArray.append(Burger(id: 13, productName: "Loaded Wheat Fish Burger", shellId: 1, proteinId: 4, condimentId: 1))
        burgerArray.append(Burger(id: 14, productName: "Loaded Corn Fish Burger", shellId: 2, proteinId: 4, condimentId: 1))
        burgerArray.append(Burger(id: 15, productName: "Plain Wheat Fish Burger", shellId: 1, proteinId: 4, condimentId: 2))
        burgerArray.append(Burger(id: 16, productName: "Plain Corn Fish Burger", shellId: 2, proteinId: 4, condimentId: 2))
        
        delegate?.deliciousBurgerDataLoaded()
    }
}











