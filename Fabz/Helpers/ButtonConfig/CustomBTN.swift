//
//  GetStartedButton.swift
//  Fabz
//
//  Created by Sherif on 8/27/19.
//  Copyright © 2019 Abdoelrhman Eaita. All rights reserved.
//

import Foundation
import UIKit
class CustomBTN : UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    private func setup() {
        layer.cornerRadius = 4
        layer.backgroundColor = UIColor(red: 24/255, green: 219/255, blue: 190/255, alpha: 1).cgColor
    }
    
}
