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
    }
    
    
    @IBAction func onClickSkipBtn(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onClickSignUpBtn(_ sender: Any) {
        let vc = AuthenticationViewController()
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func onClickLoginBtn(_ sender: Any) {
        let vc = AuthenticationViewController()
        present(vc, animated: true, completion: nil)
    }
    
    
    
    
    
}
