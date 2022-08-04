//
//  TabbarController.swift
//  Layout
//
//  Created by Junjie Huang on 2022/8/4.
//

import UIKit

class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nil)
        
        let viewController = CodingViewController1()
        viewController.view.backgroundColor = .white
        
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.tabBarItem = UITabBarItem(title: "vc1", image: nil, selectedImage: nil)
        
        let viewController3 = CodingViewController3()
        viewController3.view.backgroundColor = .white
        let navigationController3 = UINavigationController(rootViewController: viewController3)
        navigationController3.tabBarItem = UITabBarItem(title: "vc3", image: nil, selectedImage: nil)
        
        self.viewControllers = [
            navigationController,
            navigationController3
        ]
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
