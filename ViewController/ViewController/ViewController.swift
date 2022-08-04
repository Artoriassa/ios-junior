//
//  ViewController.swift
//  ViewController
//
//  Created by Junjie Huang on 2022/8/4.
//


import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {super.viewDidLoad()}
    
    @IBAction
    func jumpButtonClicked() {
        
        let redViewController = RedViewController()
        self.navigationController?.pushViewController(redViewController, animated: true)
    }
}

class RedViewController: UIViewController {
    
    override func loadView() {
        print(#function)
        
        super.loadView()
    }
    
    override func viewDidLoad() {
        print(#function)
        
        super.viewDidLoad()
        
        self.view.backgroundColor = .red
        
        let jumpButton = UIButton()
        jumpButton.translatesAutoresizingMaskIntoConstraints = false
        jumpButton.setTitle("Jump to OrangeViewController", for: .normal)
        jumpButton.addTarget(self, action: #selector(jumpButtonClicked), for: .touchUpInside)
        self.view.addSubview(jumpButton)
        NSLayoutConstraint.activate([
            jumpButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            jumpButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(#function)
        
        super.viewWillAppear(animated)
    }
    
    override func viewWillLayoutSubviews() {
        print(#function)
        
        super.viewWillLayoutSubviews()
    }
    
    override func viewDidLayoutSubviews() {
        print(#function)
        
        super.viewDidLayoutSubviews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(#function)
        
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(#function)
        
        super.viewWillDisappear(animated)
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        print(#function)
        
        super.viewDidDisappear(animated)
    }
    
    deinit {
        print(#function)
    }
    
    @objc
    func jumpButtonClicked() {
        let orangeViewController = OrangeViewController()
        self.navigationController?.pushViewController(orangeViewController, animated: true)
    }
}


class CustomButton: UIButton {
    
}

class OrangeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .orange
    }
}



