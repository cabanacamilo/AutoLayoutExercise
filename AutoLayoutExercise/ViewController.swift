//
//  ViewController.swift
//  AutoLayoutExercise
//
//  Created by Camilo Cabana on 23/11/19.
//  Copyright © 2019 Camilo Cabana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let introductionImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "logo"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let introductionText: UITextView = {
        let textView = UITextView()
        let atributeText = NSMutableAttributedString(string: "Hello!!", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 19),NSAttributedString.Key.foregroundColor: UIColor.label])
        atributeText.append(NSAttributedString(string: "\n\n\nEnjoy this amazing app, and learn all about it. Thanks for downloaded it", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 17), NSAttributedString.Key.foregroundColor: UIColor.darkGray]))
        textView.attributedText = atributeText
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(introductionText)
        setAutoLayout()
    }
    
    private func setAutoLayout () {
        let topView = UIView()
        view.addSubview(topView)
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        topView.addSubview(introductionImage)
        
        introductionImage.centerXAnchor.constraint(equalTo: topView.centerXAnchor).isActive = true
        introductionImage.centerYAnchor.constraint(equalTo: topView.centerYAnchor).isActive = true
        introductionImage.heightAnchor.constraint(equalTo: topView.heightAnchor, multiplier: 0.5).isActive = true
        
        introductionText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        introductionText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        introductionText.topAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
        introductionText.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }


}

