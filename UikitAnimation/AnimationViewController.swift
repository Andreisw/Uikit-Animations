//
//  AnimationViewController.swift
//  UikitAnimation
//
//  Created by Andrei Cojocaru on 24.05.2021.
//

import UIKit

class AnimationViewController: UIViewController,CAAnimationDelegate {
    
    let imageView : UIImageView  = {
        
        let iv = UIImageView()
        iv.isUserInteractionEnabled = true
        iv.image = UIImage(named: "tile00")
        
        
        return iv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.heightAnchor.constraint(equalToConstant: 75).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 75).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(animate)))
        
        
        for i in 0..<29 {
            spriteImages.append(UIImage(named: "tile0\(i)")!)
        }
    }
    
    var spriteImages = [UIImage]()
    
    @objc func animate () {
 
        imageView.animationImages = spriteImages
        imageView.animationDuration = 0.6
        imageView.animationRepeatCount = 1
        imageView.startAnimating()
    }
}
