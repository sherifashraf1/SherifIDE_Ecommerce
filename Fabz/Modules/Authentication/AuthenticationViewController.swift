//
//  ViewController.swift
//  Fabz
//
//  Created by apple on 12/26/1440 AH.
//  Copyright © 1440 AH Abdoelrhman Eaita. All rights reserved.
//

import UIKit

class AuthenticationViewController: UIViewController {
    
    @IBOutlet weak var signUpButttonLine: UIView!
    @IBOutlet weak var loginButtomLine: UIView!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var userNameTxtField: UITextField!
    @IBOutlet weak var emailTxtField: UITextField!
    
    @IBOutlet weak var passwordTxtField: UITextField!
    fileprivate func addLineUnderAuthStackView() {
        let underAuthStackLineView = UIView(frame: CGRect(x: 40, y: 262, width: view.frame.width, height: 0.5))
         underAuthStackLineView.backgroundColor = UIColor(displayP3Red: 216/255, green: 216/255, blue: 216/255, alpha: 0.2)
        view.addSubview(underAuthStackLineView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signUpButttonLine.backgroundColor = .white
        addLineUnderAuthStackView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
//        let underUserNameLine = UIView(frame: CGRect(x: 45, y: 380, width: view.frame.width, height: 0.5))
//        underUserNameLine.backgroundColor = UIColor(white: 1, alpha: 1)
//        view.addSubview(underUserNameLine)
//        
//        let underEmailLine = UIView(frame: CGRect(x: 45, y: 460, width: view.frame.width, height: 0.5))
//        underEmailLine.backgroundColor = UIColor(displayP3Red: 216/255, green: 216/255, blue: 216/255, alpha: 0.2)
//        view.addSubview(underEmailLine)
//        
//        let underPasswordLine = UIView(frame: CGRect(x: 45, y: 530, width: view.frame.width, height: 0.5))
//        underPasswordLine.backgroundColor = UIColor(displayP3Red: 216/255, green: 216/255, blue: 216/255, alpha: 0.2)
//        view.addSubview(underPasswordLine)

    }
    
    private func configSignupBtn(){
        self.loginButton.isHighlighted = true
        self.loginButtomLine.backgroundColor = .clear
        self.signUpButttonLine.backgroundColor = .white
    }
    private func configLoginBtn(){
        self.signUpButton.isHighlighted = true
        self.loginButtomLine.backgroundColor = .white
        self.signUpButttonLine.backgroundColor = .clear
        
    }
    @IBAction func signUpBtn(_ sender: Any) {
        configSignupBtn()
    }
    
    @IBAction func loginBtn(_ sender: Any) {
        configLoginBtn()
    }

    
}
