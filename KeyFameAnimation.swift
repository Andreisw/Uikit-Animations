//
//  KeyFameAnimation.swift
//  UikitAnimation
//
//  Created by Andrei Cojocaru on 26.05.2021.
//

import UIKit

class KeyFameAnimation: UIViewController {
    
    let myView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupView()
//        setupCAkeyFrames()
        
//        perform(#selector(shakeAnimation), with: nil, afterDelay: 2)
        
        setupUIVIewAnimateKeyFrame()
      
    }
    
    func setupUIVIewAnimateKeyFrame() {
        let center = self.view.center
        
        UIView.animateKeyframes(withDuration: 8, delay: 0, options: .calculationModeCubic) {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.1) {
                self.myView.center = CGPoint(x: center.x - 50, y: center.y + 50)
                
            }
            UIView.addKeyframe(withRelativeStartTime: 0.1, relativeDuration: 0.3) {
                self.myView.center = CGPoint(x: center.x - 100, y: center.y + 100)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.4, relativeDuration: 0.2) {
                self.myView.center = CGPoint(x: center.x + 100, y: center.y - 100)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.6, relativeDuration: 0.9) {
                self.myView.center = center
            }
        }

        
    }
    
    @objc func shakeAnimation() {
        
        let animation = CAKeyframeAnimation(keyPath: "position")
        animation.values = [
        CGPoint(x: 0, y: 0),
        CGPoint(x: -20, y: -20),
        CGPoint(x: 20, y: 20),
            CGPoint(x: 0, y: 0),
            CGPoint(x: -40, y: -40),
            CGPoint(x: 80, y: 80),
        CGPoint(x: 0, y: 0)
            
        ]
        animation.isAdditive = true
        animation.repeatCount = 4
        
        animation.keyTimes = [0,0.15, 0.25,0.5,0.6,0.75,1]
        animation.duration = 1
        
        myView.layer.add(animation, forKey: "shakeAnimation")
        
    }
    func setupCAkeyFrames() {
        let animation = CAKeyframeAnimation()
        animation.keyPath = "transform.scale"
        animation.values = [0.5, 1, 0.75]
        animation.keyTimes = [0, 0.25, 0.5, 0.75, 1]
        animation.duration = 3
        animation.fillMode = .forwards
        animation.isRemovedOnCompletion = false
        
        
        myView.layer.add(animation, forKey: "trnasformScale®")
        
        
        let colorAnimation = CAKeyframeAnimation(keyPath: "backgroundColor")
        colorAnimation.values = [UIColor.green.cgColor, UIColor.blue.cgColor, UIColor.cyan.cgColor]
        colorAnimation.keyTimes = [0.25, 0.5,0.75, 1]
        colorAnimation.duration = 3
        colorAnimation.fillMode = .forwards
        colorAnimation.isRemovedOnCompletion = false
        
        myView.layer.add(colorAnimation, forKey: "backgroundColor")
        
    }
    
    func setupView() {
        
        myView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(myView)
        myView.backgroundColor = .red
        myView.layer.cornerRadius = 10
        myView.clipsToBounds = true
        
        myView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        myView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        myView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        myView.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
}
