//
//  CodingViewController1.swift
//  Layout
//
//  Created by Junjie Huang on 2022/8/4.
//

import UIKit

class CodingViewController1: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        configSubviews()
    }
    
    private func configSubviews() {
        let buttton = UIButton()
        buttton.setTitle("button", for: .normal)
        buttton.setTitleColor(.red, for: .normal)
        buttton.frame = CGRect(x: 100, y: 100, width: 100, height: 30)
        buttton.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        
        let label = UILabel()
        label.text = "label"
        label.textColor = .green
        label.backgroundColor = .yellow
        label.frame = CGRect(x: 100, y: 140, width: 100, height: 30)
        
        let container = UIView()
        container.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 200)
        container.backgroundColor = .systemBlue
        
        container.addSubview(buttton)
        container.addSubview(label)
        container.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(container)
        
        let imageView = UIImageView(image: UIImage(named: "thoughtworks"))
        imageView.frame = CGRect(x: 10, y: 200, width: 100, height: 100)
        imageView.contentMode = .scaleAspectFit
        self.view.addSubview(imageView)
        
        let textField = UITextField()
        textField.placeholder = "please enter text"
        textField.frame = CGRect(x: 100, y: 250, width: 300, height: 50)
        self.view.addSubview(textField)
        
        NSLayoutConstraint.activate([
            container.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 10),
            container.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            container.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: -10),
            container.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    @objc
    func buttonClicked() {
        let viewcontroller2 = CodingViewController2()
        self.present(viewcontroller2, animated: true)
    }
}


