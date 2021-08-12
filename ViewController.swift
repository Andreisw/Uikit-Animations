//
//  ViewController.swift
//  UikitAnimation
//
//  Created by Andrei Cojocaru on 25.05.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        let button = NewButtonAnimate(title: "Max")
        view.addSubview(button)
    
        
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
