//
//  MainVC.swift
//  DevslopeMunchyBurgers
//
//  Created by Chou Vue on 1/4/18.
//  Copyright © 2018 VUE. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var headerView: HeaderView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        headerView.addDropShadow()
    }

}
