//
//  WalkthroughViewController.swift
//  Fabz
//
//  Created by Sherif on 8/30/19.
//  Copyright © 2019 Abdoelrhman Eaita. All rights reserved.
//

import UIKit

class WalkthroughViewController: UIViewController , UIScrollViewDelegate {
    @IBOutlet weak var scrollView: UIScrollView!{
        didSet{
            scrollView.delegate = self
        }
    }
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var skipBtn: UIButton!
    @IBOutlet weak var signUpBtn: CustomBTN!
    @IBOutlet weak var loginBtn: CustomBTN!
    @IBOutlet weak var scrollViewTrailiang: NSLayoutConstraint!
    @IBOutlet weak var scrollViewLeading: NSLayoutConstraint!
    
    var slides:[Slide] = []

    
    override func viewDidLayoutSubviews() {
        pageControl.subviews.forEach {
            $0.transform = CGAffineTransform(scaleX: 1.4, y: 1.4)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        slides = createSlides()
        setupSlideScrollView(slides: slides)

        let image = UIImage.outlinedEllipse(size: CGSize(width: 7.0, height: 7.0), color: .white)
        pageControl.pageIndicatorTintColor = UIColor.init(patternImage: image!)
        pageControl.currentPageIndicatorTintColor = .white
        pageControl.numberOfPages = slides.count
        pageControl.currentPage = 0
        view.bringSubviewToFront(pageControl)
        

    }
    

    func createSlides() -> [Slide] {
        let slide1:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide1.slide1SubLineView.backgroundColor = UIColor(displayP3Red: 255/255, green: 255/255, blue: 255/255, alpha: 0.3)
        slide1.lineView.addSubview(slide1.slide1SubLineView)
        slide1.imageView.image = UIImage(named: "slide1")
        slide1.imageTitle.text = "Shop Everywere"
        slide1.imageDescription.text = "HIGH QUALITY MATERIAL EGYPTION FASHION ONLINE STORE"
        
        let slide2:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide2.slide2SubLineView.backgroundColor = UIColor(displayP3Red: 255/255, green: 255/255, blue: 255/255, alpha: 0.3)

        slide2.lineView.addSubview(slide2.slide2SubLineView)
        slide2.imageView.image = UIImage(named: "slide2")
        slide2.imageTitle.text = "IDEAcademy"
        slide2.imageDescription.text = "A GREAT COMMUNITY FOR LEARNING IOS DEVELOPMENT"
        
        let slide3:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide3.slide3SubLineView.backgroundColor = UIColor(displayP3Red: 255/255, green: 255/255, blue: 255/255, alpha: 0.3)
        slide3.lineView.addSubview(slide3.slide3SubLineView)
        slide3.imageView.image = UIImage(named: "slide3")
        slide3.imageTitle.text = "Sherif Ashraf Hassan"
        slide3.imageDescription.text = "IOS DEVELOPER"
        
        return [slide1, slide2, slide3]
    }
    
    
    func setupSlideScrollView(slides : [Slide]) {
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count), height: view.frame.height)
        scrollView.isPagingEnabled = true

        for i in 0 ..< slides.count {
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
            scrollView.addSubview(slides[i])
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = round(scrollView.contentOffset.x/view.frame.width)
        pageControl.currentPage = Int(pageIndex)
        if scrollView.contentOffset.y != 0 {
            scrollView.contentOffset.y = 0
        }

        
//        let maximumHorizontalOffset: CGFloat = scrollView.contentSize.width - scrollView.frame.width
//        let currentHorizontalOffset: CGFloat = scrollView.contentOffset.x
//
//        // vertical
//        let maximumVerticalOffset: CGFloat = scrollView.contentSize.height - scrollView.frame.height
//        let currentVerticalOffset: CGFloat = scrollView.contentOffset.y
        
        //        let percentageHorizontalOffset: CGFloat = currentHorizontalOffset / maximumHorizontalOffset
        //        let percentageVerticalOffset: CGFloat = currentVerticalOffset / maximumVerticalOffset
        
    }

    

}


