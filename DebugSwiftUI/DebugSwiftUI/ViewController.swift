//
//  ViewController.swift
//  DebugSwiftUI
//
//  Created by Venkatnarayansetty, Badarinath on 2/12/20.
//  Copyright © 2020 Venkatnarayansetty, Badarinath. All rights reserved.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        
        if #available(iOS 13.0, *) {
            let swiftUIView = UIHostingController(rootView: SwiftUIView())
            swiftUIView.view.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview(swiftUIView.view)
        
            NSLayoutConstraint.activate([
                swiftUIView.view.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100),
                swiftUIView.view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16),
                swiftUIView.view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16),
                swiftUIView.view.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -50)
            ])
            
        } else {
            // Fallback on earlier versions
        }
        
    }
}

