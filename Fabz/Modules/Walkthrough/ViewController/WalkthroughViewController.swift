//
//  WalkthroughViewController.swift
//  Fabz
//
//  Created by Sherif on 8/30/19.
//  Copyright © 2019 Abdoelrhman Eaita. All rights reserved.
//

import UIKit

class WalkthroughViewController: UIViewController {
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
    var i = 0

    override func viewDidLayoutSubviews() {
        pageControl.subviews.forEach {
            $0.transform = CGAffineTransform(scaleX: 1.4, y: 1.4)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        slides = createSlide()
        self.loadViewIfNeeded()
        setupSlideScrollView(slides: slides)
        pageIndicatorSetUp()
        pageControl.numberOfPages = slides.count
        pageControl.currentPage = 0
        view.bringSubviewToFront(pageControl)
        autoPageSlideWithTimer()
    }
    
    fileprivate func pageIndicatorSetUp() {
        let image = UIImage.outlinedEllipse(size: CGSize(width: 7.0, height: 7.0), color: .white)
        pageControl.pageIndicatorTintColor = UIColor.init(patternImage: image!)
        pageControl.currentPageIndicatorTintColor = .white
    }

    private func createSlide()-> [Slide]{
        let slide1:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide1.slide1SubLineView.backgroundColor = UIColor.IDEColor
        slide1.lineView.addSubview(slide1.slide1SubLineView)
        slide1.imageView.image = UIImage(named: "slide1")
        slide1.imageTitle.text = "Shop Everywere"
        slide1.imageDescription.text = "High quality material egyption fashion online store".uppercased()
      
        let slide2:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide2.slide2SubLineView.backgroundColor = UIColor.IDEColor
        slide2.lineView.addSubview(slide2.slide2SubLineView)
        slide2.imageView.image = UIImage(named: "slide1")
        slide2.imageTitle.text = "Money Heist"
        slide2.imageDescription.text = "Je m’appelle Tokyo. Mais ce n’était pas mon nom quand toute.".uppercased()
       
        let slide3:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide3.slide3SubLineView.backgroundColor = UIColor.IDEColor
        slide3.lineView.addSubview(slide3.slide3SubLineView)
        slide3.imageView.image = UIImage(named: "slide1")
        slide3.imageTitle.text = "Nancy Ajram"
        slide3.imageDescription.text = "one of the most successful singers in the Arab world".uppercased()
        
        return [slide1 , slide2 , slide3]
    }


    func setupSlideScrollView(slides : [Slide]) {
        scrollView.isPagingEnabled = true
        for i in 0 ..< slides.count {
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width , height: view.frame.height)
            scrollView.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count), height: view.frame.height)

            scrollView.addSubview(slides[i])
            self.loadViewIfNeeded()
        }
    }
    
    fileprivate func autoPageSlideWithTimer() {
        let scrollingTimer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(self.newStartScrolling), userInfo: nil, repeats: true)
        scrollingTimer.fire()
    }
    
    @objc func newStartScrolling() {
        if i == slides.count {
            i = 0
        }
        let x = CGFloat(i) * scrollView.frame.size.width
        scrollView.setContentOffset(CGPoint(x: x, y: 0), animated: true)
        self.i += 1
    }
    
    @IBAction func skipBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func signUpBtn(_ sender: Any) {
        let vc = AuthenticationViewController()
        present(vc, animated: true, completion: nil)
    }
   
}

extension WalkthroughViewController : UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = round(scrollView.contentOffset.x/view.frame.width)
        pageControl.currentPage = Int(pageIndex)
        if scrollView.contentOffset.y != 0 {
            scrollView.contentOffset.y = 0
        }
    }
}


