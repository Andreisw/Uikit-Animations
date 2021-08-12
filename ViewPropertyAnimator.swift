//
//  ViewPropertyAnimator.swift
//  UikitAnimation
//
//  Created by Andrei Cojocaru on 25.05.2021.
//

import Foundation
import UIKit

class ViewPropertyAnimator: UIViewController {
    
    var animator : UIViewPropertyAnimator!
    var boxWidth:NSLayoutConstraint!
    let box = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        view.addSubview(box)
        box.translatesAutoresizingMaskIntoConstraints = false
        
        boxWidth =  box.widthAnchor.constraint(equalToConstant: 100)
        boxWidth.isActive = true
        
        box.heightAnchor.constraint(equalToConstant: 100).isActive = true
        box.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        box.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        box.backgroundColor = .blue
        
        let slider = UISlider()
        slider.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(slider)
        slider.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100).isActive  = true
        slider.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive  = true
        slider.widthAnchor.constraint(equalToConstant: view.frame.width - 150).isActive = true
        
        slider.addTarget(self, action: #selector(handleSLiderChange(slide:)), for: .allEvents)
    }
    
    @objc fileprivate func handleSLiderChange(slide:UISlider) {
        
        boxWidth.constant = 100 + CGFloat(slide.value * 100)
        animator = UIViewPropertyAnimator(duration: 2, dampingRatio: 0.5, animations: {
            self.view.layoutIfNeeded()
            self.box.backgroundColor = .blue
        })
        animator.startAnimation()
        
    }
}
