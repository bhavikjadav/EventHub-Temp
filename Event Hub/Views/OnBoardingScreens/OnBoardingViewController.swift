//
//  OnBoardingViewController.swift
//  Event Hub
//
//  Created by Mac on 28/06/23.
//

import UIKit

class OnBoardingViewController: UIViewController {
    
    @IBOutlet weak var ImageCollectionView: UICollectionView!
    @IBOutlet weak var skipButton: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var nextButton: UIButton!
    
       
    var slides: [OnBoardingSlide] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        slides = [
            OnBoardingSlide(image: UIImage(named: "onBoarding1")!, title: "This is the Title", description: "This is the description"),
            OnBoardingSlide(image: UIImage(named: "onBoarding2")!, title: "This is the Title", description: "This is the description"),
            OnBoardingSlide(image: UIImage(named: "onBoarding1")!, title: "This is the Title", description: "This is the description")
        ]
        
    }
    
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func skipButtonPressed(_ sender: UIButton) {
    }
    
}

extension OnBoardingViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnBoardingCollectionViewCell.identifier, for: indexPath) as! OnBoardingCollectionViewCell
        cell.setup(slides[indexPath.row])
        return cell
    }
}
