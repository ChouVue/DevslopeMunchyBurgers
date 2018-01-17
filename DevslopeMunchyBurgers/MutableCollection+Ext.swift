//
//  MutableCollection.swift
//  DevslopeMunchyBurgers
//
//  Created by Chou Vue on 1/17/18.
//  Copyright © 2018 VUE. All rights reserved.
//

import Foundation

//Here we are EXTENDING the MUTABLE COLLECTION TYPE where INDEX is equal to an INTEGER
//So only where a MutableCollection has an Integer Index is where we are going to Extend it
extension MutableCollection where Index == Int {
    
    mutating func shuffle() {
        
        //If less than 2 we are not going to be shuffling it
        if count < 2 { return }
        
        for i in startIndex ..< endIndex - 1 {
            let j = Int(arc4random_uniform(UInt32(endIndex - i))) + i
            
            //Guarding so that i and j are not equal
            //But if they are, then we are going to continue
            guard i != j else { continue }
            
            //At this point we are going to swap these
            //We are using a "AMPERSAND" -->"AND sign (&)" here because this is a mutating function and this actually uses a "In" "Out" parameters
            //The AMPERSAND just basically mean a reference to that variable
            swap(&self[i], &self[j])
        }
    }
}
