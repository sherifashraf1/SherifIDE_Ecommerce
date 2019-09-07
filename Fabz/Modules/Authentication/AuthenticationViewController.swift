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
    @IBOutlet weak var checkBoxBtn: UIButton!
    
    @IBOutlet weak var agreeWithTermsStackView: UIStackView!
    
    @IBOutlet weak var signUpBtn: CustomBTN!
    
    @IBOutlet weak var faceBookBtn: UIButton!
    
    @IBOutlet weak var sigbUpBtnButtomConstant: NSLayoutConstraint!
    
    @IBOutlet weak var forgetPasswordBtn: UIButton!
    
    
    fileprivate func addLineUnderAuthStackView() {
        let underAuthStackLineView = UIView(frame: CGRect(x: 40, y: 222, width: view.frame.width, height: 0.5))
        underAuthStackLineView.backgroundColor = UIColor(displayP3Red: 216/255, green: 216/255, blue: 216/255, alpha: 0.2)
        view.addSubview(underAuthStackLineView)
    }
    
    fileprivate func addIconsToTextFields() {
        let imageView1 = UIImageView(frame: CGRect(x: 0, y: 8, width: 20, height: 20))
        let userNameIcon = UIImage(named: "username-icon")
        imageView1.image = userNameIcon
        imageView1.contentMode = .scaleAspectFit
        
        
        let imageView2 = UIImageView(frame: CGRect(x: 0, y: 8, width: 20, height: 20))
        let emailIcon = UIImage(named: "email-icon")
        imageView2.image = emailIcon
        imageView2.contentMode = .scaleAspectFit
        
        let imageView3 = UIImageView(frame: CGRect(x: 0, y: 8, width: 20, height: 20))
        let passwordIcon = UIImage(named: "password-icon")
        imageView3.image = passwordIcon
        imageView3.contentMode = .scaleAspectFit
        
        
        let view1 = UIView(frame: CGRect(x: 0, y: 0, width: 35, height: 40))
        view1.addSubview(imageView1)
        view1.backgroundColor = .clear
        
        
        let view2 = UIView(frame: CGRect(x: 0, y: 0, width: 35, height: 40))
        view2.addSubview(imageView2)
        view2.backgroundColor = .clear
        
        
        let view3 = UIView(frame: CGRect(x: 0, y: 0, width: 35, height: 40))
        view3.addSubview(imageView3)
        view3.backgroundColor = .clear
        
        
        userNameTxtField.leftViewMode = .always
        userNameTxtField.leftView = view1
        emailTxtField.leftViewMode = .always
        emailTxtField.leftView = view2
        passwordTxtField.leftViewMode = .always
        passwordTxtField.leftView = view3
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signUpButttonLine.backgroundColor = .white
        addLineUnderAuthStackView()
        addIconsToTextFields()
        checkBoxBtn.layer.cornerRadius = 5
        
    }
    
    
    private func configSignupBtn(){
        loginButton.isHighlighted = true
        loginButtomLine.backgroundColor = .clear
        signUpButttonLine.backgroundColor = .white
        userNameStackView.isHidden = false
        agreeWithTermsStackView.isHidden = false
        faceBookBtn.isHidden = false
        signUpBtn.setTitle("SIGNUP", for: .normal)
        sigbUpBtnButtomConstant.constant -= 60
        forgetPasswordBtn.isHidden = true
        
        emailTxtField.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor(white: 0.6, alpha: 0.4)])
        emailTxtFLine.backgroundColor = UIColor(white: 0.6, alpha: 0.4)
        
    }
    private func configLoginBtn(){
        signUpButton.isHighlighted = true
        loginButtomLine.backgroundColor = .white
        signUpButttonLine.backgroundColor = .clear
        userNameStackView.isHidden = true
        agreeWithTermsStackView.isHidden = true
        faceBookBtn.isHidden = true
        signUpBtn.setTitle("LOGIN", for: .normal)
        sigbUpBtnButtomConstant.constant += 60

        forgetPasswordBtn.isHidden = false
        emailTxtField.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        emailTxtFLine.backgroundColor = .white
        
        
    }
    @IBAction func signUpBtn(_ sender: Any) {
        loginButton.isEnabled = true
        configSignupBtn()
        signUpButton.isEnabled = false
    }
    
    @IBAction func loginBtn(_ sender: Any) {
        signUpButton.isEnabled = true
        configLoginBtn()
        loginButton.isEnabled = false
    }
    
    @IBAction func checkBoxBtn(_ sender: UIButton) {
        sender.setImage(UIImage(named: "checked"), for: .normal)
        sender.tintColor = .white
        sender.isSelected = !sender.isSelected
        if !sender.isSelected {
            sender.setImage(UIImage(named: "unchecked"), for: .normal)
            
        }
    }
    
}
