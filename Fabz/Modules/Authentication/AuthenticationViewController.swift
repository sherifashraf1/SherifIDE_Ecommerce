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

    @IBOutlet weak var userNameTxtFLine: UIView!
    @IBOutlet weak var emailTxtFLine: UIView!
    @IBOutlet weak var passwordTxtFLine: UIView!
    @IBOutlet weak var userNameStackView: UIStackView!
    
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
    
 
    private func configSignupBtn(){
        self.loginButton.isHighlighted = true
        self.loginButtomLine.backgroundColor = .clear
        self.signUpButttonLine.backgroundColor = .white
        userNameStackView.isHidden = false
        emailTxtField.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor(white: 0.6, alpha: 0.4)])
        emailTxtFLine.backgroundColor = UIColor(white: 0.6, alpha: 0.4)

    }
    private func configLoginBtn(){
        self.signUpButton.isHighlighted = true
        self.loginButtomLine.backgroundColor = .white
        self.signUpButttonLine.backgroundColor = .clear
        userNameStackView.isHidden = true
        emailTxtField.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        emailTxtFLine.backgroundColor = .white
        
        
    }
    @IBAction func signUpBtn(_ sender: Any) {
        configSignupBtn()
    }
    
    @IBAction func loginBtn(_ sender: Any) {
        configLoginBtn()
    }

    
}
