//
//  WalkthroughViewController.swift
//  Fabz
//
//  Created by Sherif on 9/7/19.
//  Copyright © 2019 Abdoelrhman Eaita. All rights reserved.
//

import UIKit

class WalkthroughViewController: UIViewController {
    @IBOutlet weak var pageControl: UIPageControl!

    
    override func viewDidLayoutSubviews() {
        pageControl.subviews.forEach {
            $0.transform = CGAffineTransform(scaleX: 1.4, y: 1.4)
        }
    }
    
    fileprivate func pageIndicatorSetUp() {
        let image = UIImage.outlinedEllipse(size: CGSize(width: 7.0, height: 7.0), color: .white)
        pageControl.pageIndicatorTintColor = UIColor.init(patternImage: image!)
        pageControl.currentPageIndicatorTintColor = .white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pageIndicatorSetUp()
        pageControl.numberOfPages = 3
        pageControl.currentPage = 0
        //view.bringSubviewToFront(pageControl)
    }
    
    
    @IBAction func skipBtn(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    
}
