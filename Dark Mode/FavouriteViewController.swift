//
//  FavouriteViewController.swift
//  Dark Mode
//
//  Created by Кирилл Медведев on 25/09/2019.
//  Copyright © 2019 Kirill Medvedev. All rights reserved.
//

import UIKit

class FavouriteViewController: ViewController {
    
    let imageView = UIImageView(image: #imageLiteral(resourceName: "iOS13_BlueWhite_FlareZephyr"))
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
        setupMainImageView()
        
        let blurEffect = UIBlurEffect(style: .light)
        let blurView = configureBlurView(effect: blurEffect)
        
        view.addSubview(blurView)
        
        let vibrancyEffect = UIVibrancyEffect(blurEffect: blurEffect, style: .secondaryLabel)
        let vibrancyView = configureVibrancyView(effect: vibrancyEffect)
        blurView.contentView.addSubview(vibrancyView)
        
        let myLabel = configureLabel()
        vibrancyView.contentView.addSubview(myLabel)
        
        myLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        myLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
       
    }
    
    private func setupMainImageView() {
        view.addSubview(imageView)
        imageView.frame = view.bounds
        imageView.contentMode = .scaleAspectFill
    }
    
    private func configureBlurView(effect: UIVisualEffect) -> UIVisualEffectView {
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.effect = effect
        view.frame = self.view.bounds.inset(by: .init(top: 200, left: 32, bottom: 200, right: 32))
        return view
    }
    
    private func configureVibrancyView(effect: UIVisualEffect) -> UIVisualEffectView {
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.effect = effect
        view.frame = self.view.bounds.inset(by: .init(top: 210, left: 42, bottom: 210, right: 42))
        return view
    }
    
    private func configureLabel() -> UILabel {
        let label = UILabel()
        label.text = "Blur Effect Label"
        label.textAlignment = .center
        label.textColor = .systemBackground
        label.font = UIFont.systemFont(ofSize: 40, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }
}
