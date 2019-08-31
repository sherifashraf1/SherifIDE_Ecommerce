//
//  ViewController.swift
//  Fabz
//
//  Created by apple on 12/26/1440 AH.
//  Copyright © 1440 AH Abdoelrhman Eaita. All rights reserved.
//

import UIKit

class AuthenticationViewController: UIViewController {

    enum topSegment: Int {
        case login
        case register
    }
    var currentpage :topSegment = .login
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
