//
//  ViewController.swift
//  ExperimentTextView
//
//  Created by Ashis Laha on 26/12/19.
//  Copyright © 2019 Ashis Laha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let experimentView: ExperimentedtView = {
        let view = ExperimentedtView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(experimentView)
        NSLayoutConstraint.activate([
            experimentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            experimentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            experimentView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        experimentView.model = Model(
            title: "This is a experiment of uilabel where the uilabel will grow as per content. Just putting some random text",
            body: "This is a experiment of uitextview where the uitextview will grow as per content. Putting some random text. \n We can add more text here.")
    }
}

