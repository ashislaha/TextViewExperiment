//
//  ExperimentedtView.swift
//  ExperimentTextView
//
//  Created by Ashis Laha on 26/12/19.
//  Copyright © 2019 Ashis Laha. All rights reserved.
//

import UIKit

struct Model {
    let title: String
    let body: String
}

class ExperimentedtView: UIView {
    
    public var model: Model? {
        didSet {
            label.text = model?.title
            textView.text = model?.body
        }
    }
    
    private let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont.preferredFont(forTextStyle: .headline)
        return label
    }()
    
    private let textView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isScrollEnabled = false
        textView.font = UIFont.preferredFont(forTextStyle: .body)
        return textView
    }()
    
    private let separator: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        return view
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.red, for: .normal)
        button.backgroundColor = .green
        button.setTitle("Button", for: .normal)
        return button
    }()
    
    // need a vertical stack view to hold all of the above views
    private let verticalStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .fillProportionally
        stack.axis = .vertical
        stack.alignment = .center
        stack.spacing = 12
        return stack
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUp()
    }
    
    private func setUp() {
        backgroundColor = UIColor.black.withAlphaComponent(0.1)
        addSubview(verticalStack)
        [label, textView, separator, button].forEach{ verticalStack.addArrangedSubview($0) }
        
        NSLayoutConstraint.activate([
            verticalStack.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            verticalStack.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            verticalStack.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            verticalStack.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            
            separator.heightAnchor.constraint(equalToConstant: 10),
            separator.widthAnchor.constraint(equalTo: verticalStack.widthAnchor)
        ])
    }
}
