//
//  CustomButton.swift
//  Fabz
//
//  Created by Sherif on 8/27/19.
//  Copyright © 2019 Abdoelrhman Eaita. All rights reserved.
//

import Foundation
import  UIKit
class SplashCustomButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    private func setup() {
        layer.cornerRadius = 4
    }
    
}
