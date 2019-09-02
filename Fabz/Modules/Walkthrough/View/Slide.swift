//
//  Slide.swift
//  Fabz
//
//  Created by Sherif on 8/31/19.
//  Copyright © 2019 Abdoelrhman Eaita. All rights reserved.
//

import UIKit

class Slide: UIView {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lineView: UIView!
    @IBOutlet weak var imageTitle: UILabel!
    @IBOutlet weak var imageDescription: UILabel!
    
    lazy var slide1SubLineView = UIView(frame: CGRect(x: lineView.frame.minX, y: 0, width: lineView.frame.width/7 , height: lineView.frame.height))
    
    lazy var slide2SubLineView = UIView(frame: CGRect(x: lineView.frame.minX + 50, y: 0, width: lineView.frame.width/7 , height: lineView.frame.height))
    
    lazy var slide3SubLineView : UIView = {UIView(frame: CGRect(x: lineView.frame.minX + 100, y: 0, width: lineView.frame.width/7 , height: lineView.frame.height))
        
    }()
    
}
