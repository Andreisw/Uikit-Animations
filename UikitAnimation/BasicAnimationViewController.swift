//
//  BasicAnimationViewController.swift
//  UikitAnimation
//
//  Created by Andrei Cojocaru on 24.05.2021.
//

import UIKit

class BasicAnimationViewController: UIViewController {

    
    let basicView = UIView()
    var heightAnchor:NSLayoutConstraint!

    
    override func viewDidLoad() {
        super.viewDidLoad()
       setupView()
       
    }
    
    func setupView() {
        
        view.backgroundColor = .white
        
        view.addSubview(basicView)
        basicView.backgroundColor = .blue
        
        
        basicView.translatesAutoresizingMaskIntoConstraints = false
        
        basicView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        basicView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        basicView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//        basicView.widthAnchor.constraint(equalToConstant: 500).isActive = true
        
        heightAnchor = basicView.heightAnchor.constraint(equalToConstant: 20)
        heightAnchor.isActive = true
        
        
        expanViewOnLoad()
    }
    
    func expanViewOnLoad() {
        
       
        
        UIView.animate(withDuration: 3, delay: 0.5, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut) {
//            self.view.layoutIfNeeded()
            
            self.heightAnchor.isActive = false
            self.heightAnchor = self.basicView.heightAnchor.constraint(equalToConstant: 300)
            self.heightAnchor.isActive = true
        }
        

    }
}
