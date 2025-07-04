//
//  ViewController.swift
//  UILabelLayer
//
//  Created by 김민성 on 7/4/25.
//

import UIKit

class ViewController: UIViewController {
    
    let justView = UIView()
    let justViewLabel = UILabel()
    let justButton = UIButton()
    let justButtonLabel = UILabel()
    let justLabel = UILabel()
    let justLabelLabel = UILabel()
    let justScrollView = UIScrollView()
    let justScrollViewLabel = UILabel()
    
    let stackView = UIStackView()
    let labelStackView = UIStackView()
    
    lazy var justViews = [justView, justButton, justLabel, justScrollView]
    lazy var labels = [justViewLabel, justButtonLabel, justLabelLabel, justScrollViewLabel]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        justViewLabel.text = "UIView"
        justButtonLabel.text = "UIButton"
        justLabelLabel.text = "UILabel"
        justScrollViewLabel.text = "UIScrollView"
        
        labels.forEach {
            $0.adjustsFontSizeToFitWidth = true
            $0.numberOfLines = 0
        }
        
        setupStackViews()
        setupDesign()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        justViewLabel.text =
        """
        UIView
        
        layer색: \(justView.layer.backgroundColor)
        """
        
        justButtonLabel.text =
        """
        UIButton
        
        layer색: \(justButton.layer.backgroundColor)
        """
        
        justLabelLabel.text =
        """
        UILabel
        
        layer색: \(justLabel.layer.backgroundColor)
        """
        
        justScrollViewLabel.text =
        """
        UIScrollView
        
        layer색: \(justScrollView.layer.backgroundColor)
        """
        
        view.updateConstraints()
        view.layoutIfNeeded()
        
//        print(justLabel)
        print(justLabel.layer)
        print(justView.layer)
        print(justButton.layer)
        print(justScrollView.layer)
    }
    
    private func setupStackViews() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        justViews.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
        
        labelStackView.translatesAutoresizingMaskIntoConstraints = false
        labels.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
        
        view.addSubview(labelStackView)
        view.addSubview(stackView)
        
        labelStackView.addArrangedSubview(justViewLabel)
        labelStackView.addArrangedSubview(justButtonLabel)
        labelStackView.addArrangedSubview(justLabelLabel)
        labelStackView.addArrangedSubview(justScrollViewLabel)
        
        stackView.addArrangedSubview(justView)
        stackView.addArrangedSubview(justButton)
        stackView.addArrangedSubview(justLabel)
        stackView.addArrangedSubview(justScrollView)
        
        labelStackView.axis = .vertical
        labelStackView.alignment = .fill
        labelStackView.distribution = .fillEqually
        labelStackView.spacing = 30
        
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 30
        
        NSLayoutConstraint.activate([
            labelStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            labelStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            labelStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            labelStackView.widthAnchor.constraint(equalToConstant: 150)
        ])
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            stackView.leadingAnchor.constraint(equalTo: labelStackView.trailingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30)
        ])
    }
    
    private func setupDesign() {
        justView.backgroundColor = .systemBlue
        justButton.backgroundColor = .systemYellow
        justLabel.backgroundColor = .systemGreen
        justScrollView.backgroundColor = .systemRed
        
        justViews.forEach { $0.layer.cornerRadius = 20 }
    }
    
}

