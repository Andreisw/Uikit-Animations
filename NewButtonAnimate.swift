//
//  NewButtonAnimate.swift
//  UikitAnimation
//
//  Created by Andrei Cojocaru on 26.05.2021.
//

import Foundation
import UIKit

class NewButtonAnimate: UIButton {
    
    var widtH : NSLayoutConstraint!
    var height: NSLayoutConstraint!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    init(title:String) {
        
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        
      widtH =  widthAnchor.constraint(equalToConstant: 100)
    height = heightAnchor.constraint(equalToConstant: 30)
        
        widtH.isActive = true
        height.isActive = true
        
        setupButon(title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupButon(title:String) {
        
        titleLabel?.text = title
        titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .light)
        backgroundColor = .red
        layer.cornerRadius = 5
        
        
        addTarget(self, action: #selector(touchUp), for: .touchDown)
        addTarget(self, action: #selector(touchIn), for: .touchUpInside)
        
    }
    
    @objc func touchUp() {
        
        
        widtH.isActive = false
        widtH.constant = 50
        layer.cornerRadius = 10
        alpha = 0.2
        
        widtH.isActive = true
        
        height.isActive = false
        height.constant = 50
        height.isActive = true
        
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.9, options: .curveEaseInOut) {
            
            self.superview?.layoutIfNeeded()
        }

        
    }
    
    @objc func touchIn() {
        
        widtH.isActive = false
        widtH.constant = 100
        widtH.isActive = true
        layer.cornerRadius = 5
        alpha = 1
        
        height.isActive = false
        height.constant = 30
        height.isActive = true
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.9, options: .curveEaseInOut) {
            
            self.superview?.layoutIfNeeded()
        }

    }
    
    
}
