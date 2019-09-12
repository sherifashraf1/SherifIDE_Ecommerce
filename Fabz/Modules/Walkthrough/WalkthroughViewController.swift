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
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var underCollectionViewLine: UIView!
    @IBOutlet weak var underCollectionViewLeadingConstant: NSLayoutConstraint!
    
    @IBOutlet weak var underCollectionViewLandScapeLeadingConstant: NSLayoutConstraint!
    
    
    var images = [UIImage(named: "slide1"),
                  UIImage(named: "slide2"),
                  UIImage(named: "slide3")]
    
    
    var counter = 0
    
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
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        collectionView.register(UINib(nibName: "SlideShowCell", bundle: .main), forCellWithReuseIdentifier: "SlideShowCell")
        collectionView.isPagingEnabled = true
        underCollectionViewLine.isHidden = false
        collectionAutoSlide()

        
        }
    
    
    
    private func collectionAutoSlide(){
        DispatchQueue.main.async {
            let timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.autoSlideWithTime), userInfo: nil, repeats: true)
            timer.fire()
       
            
        }
    }
    @objc func autoSlideWithTime() {
        if counter < images.count{
            let index = IndexPath.init(item: counter, section: 0)
            self.collectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            pageControl.currentPage = counter
            counter += 1


        }else {
            counter = 0
            let index = IndexPath.init(item: counter, section: 0)
            self.collectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            pageControl.currentPage = counter

        }



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

extension WalkthroughViewController : UICollectionViewDelegate , UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "SlideShowCell", for: indexPath) as! SlideShowCell
        cell.slideImage.image = images[indexPath.row]
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let witdh = scrollView.frame.width - (scrollView.contentInset.left*2)
        let index = scrollView.contentOffset.x / witdh
        let roundedIndex = round(index)
        self.pageControl?.currentPage = Int(roundedIndex)
        switch pageControl.currentPage {
        case 0 :
            self.underCollectionViewLeadingConstant.constant = 30
            self.underCollectionViewLandScapeLeadingConstant.constant = 20
        case 1:
            self.underCollectionViewLeadingConstant.constant += 4
            self.underCollectionViewLandScapeLeadingConstant.constant += 2

        case 2:
            self.underCollectionViewLeadingConstant.constant += 4
            self.underCollectionViewLandScapeLeadingConstant.constant += 2


        default:
            break
        }
        
    }

}

extension WalkthroughViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width - 40 , height: collectionView.frame.height)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
 
}
