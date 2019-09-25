//
//  MainTabBarController.swift
//  Dark Mode
//
//  Created by Кирилл Медведев on 25/09/2019.
//  Copyright © 2019 Kirill Medvedev. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateInitialViewController() as! ViewController
        
        viewControllers = [generateViewController(with: viewController, title: "Photos", image: #imageLiteral(resourceName: "photos-simple-7")), generateViewController(with: FavouriteViewController(), title: "Favourite", image: #imageLiteral(resourceName: "heart-7"))
        ]
    }
    
    func generateViewController(with rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let naVC = UINavigationController(rootViewController: rootViewController)
        naVC.tabBarItem.title = title
        naVC.tabBarItem.image = image
        return naVC
    }
    
}
