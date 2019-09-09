//
//  LoginViewController.swift
//  Fabz
//
//  Created by Sherif on 8/26/19.
//  Copyright © 2019 Abdoelrhman Eaita. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {
    @IBOutlet weak var getStartedBtn: CustomBTN!
    

    override func viewDidLoad() {
        super.viewDidLoad()
  
    }
    
    @IBAction func didPressOnGetStartedBtn(_ sender: Any) {
        let vc = AuthenticationViewController()
        present(vc, animated: true, completion: nil)
    }
    

}



