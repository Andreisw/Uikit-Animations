//
//  GradientLayer.swift
//  UikitAnimation
//
//  Created by Andrei Cojocaru on 26.05.2021.
//

import UIKit

class MyGradient:UIViewController {
    
    
    var newView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        newView.frame = view.frame
        newView.backgroundColor = .white
        
        view.addSubview(newView)
        setupGradientLayer()
    }
    
    fileprivate func setupGradientLayer() {
        
        let gradient = CAGradientLayer()
        newView.layer.addSublayer(gradient)
        
        gradient.frame = view.frame
        gradient.colors = [UIColor.red.cgColor, UIColor.cyan.cgColor,UIColor.systemGreen.cgColor]
        gradient.locations = [0.1,0.5,0.9]
        
        
        
        
    }
}
