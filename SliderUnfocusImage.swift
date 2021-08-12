//
//  SliderUnfocusImage.swift
//  UikitAnimation
//
//  Created by Andrei Cojocaru on 25.05.2021.
//

import Foundation
import UIKit


class SliderUnfocus: UIViewController {
    
    var animator  = UIViewPropertyAnimator(duration: 1, curve: .linear, animations: nil)
    fileprivate var imageView:UIImageView = UIImageView(image: #imageLiteral(resourceName: "liverpool"))
    fileprivate var blurView:UIVisualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .prominent))
   


    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = .red
        view.addSubview(imageView)
        view.addSubview(blurView)
        
        imageView.frame = view.frame
        imageView.contentMode = .scaleAspectFill
        blurView.frame = view.frame
       
        self.blurView.alpha = 0.5
        imageView.layer.masksToBounds = true
        blurView.layer.masksToBounds = true
        
        animator.addAnimations {
            
            self.blurView.alpha = 1
            self.imageView.transform = CGAffineTransform(scaleX: 2, y:  2)
            
        }

//      setupCABASIC()
        perform(#selector(setupCABASIC), with: nil, with: 1)
        
        setupSlider()
      
    }
    @ objc func setupCABASIC() {
//        
//        let basic0 = CABasicAnimation(keyPath: "transform.scale")
//        basic0.toValue = 0.5
//        basic0.duration = 2
//        basic0.fillMode = CAMediaTimingFillMode.forwards
//        basic0.isRemovedOnCompletion = false
//        
//        imageView.layer.add(basic0, forKey: "maxcode.io")
//        blurView.layer.add(basic0, forKey: "maxcode.io")
//        
//        
//        let basic1 = CABasicAnimation(keyPath: "cornerRadius")
//        basic1.toValue = 50
//        basic1.duration = 2
//        basic1.fillMode = CAMediaTimingFillMode.forwards
//        basic1.isRemovedOnCompletion = false
//        
//        imageView.layer.add(basic1, forKey: "maxcide.ios")
//        blurView.layer.add(basic1, forKey: "maxcide.ios")
//        
//        
//        let basic2 = CABasicAnimation(keyPath: "opacity")
//        basic2.toValue = 0
//        basic2.duration = 2
//        basic2.fillMode = CAMediaTimingFillMode.forwards
//        basic2.isRemovedOnCompletion = false
//        
//
//        blurView.layer.add(basic2, forKey: "maxOpacity")
    
    
    
    
        let springAnimation = CASpringAnimation(keyPath: "transform.scale")
        springAnimation.fromValue = 0
        springAnimation.toValue  = 1
        springAnimation.damping = 2
        springAnimation.mass = 0
        springAnimation.duration = 3
        
        imageView.layer.add(springAnimation, forKey: "maxcide.iosdc")
        blurView.layer.add(springAnimation, forKey: "maxcide.iosdc")

    }
        
        fileprivate func setupSlider() {
            
            
            
            let slider = UISlider()
            slider.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(slider)
            slider.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive  = true
            slider.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive  = true
            slider.widthAnchor.constraint(equalToConstant: view.frame.width - 150).isActive = true
            slider.addTarget(self, action: #selector(handleSLiderChange(slide:)), for: .allEvents)
        }
      
        
       

    
    @objc fileprivate func handleSLiderChange(slide:UISlider) {
        
   
        animator.fractionComplete = CGFloat(slide.value)
        
}
}
