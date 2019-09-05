//
//  UITextField + PlaceholderColor.swift
//  Fabz
//
//  Created by Sherif on 9/5/19.
//  Copyright © 2019 Abdoelrhman Eaita. All rights reserved.
//

import Foundation
import UIKit
extension UITextField{
    @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: newValue!])
        }
    }
}
