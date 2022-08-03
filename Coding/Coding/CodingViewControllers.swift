//
//  CodingViewControllers.swift
//  Coding
//
//  Created by Junjie Huang on 2022/8/3.
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
        label.textColor = .orange
        label.backgroundColor = .gray
        label.frame = CGRect(x: 100, y: 140, width: 100, height: 30)
        
        let container = UIView()
        container.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 200)
        container.backgroundColor = .blue
        
        container.addSubview(buttton)
        container.addSubview(label)
        self.view.addSubview(container)
        
        
        let imageView = UIImageView(image: UIImage(named: "thoughtworks"))
        imageView.frame = CGRect(x: 10, y: 200, width: 100, height: 100)
        imageView.contentMode = .scaleAspectFit
        self.view.addSubview(imageView)
        
        let textField = UITextField()
        textField.placeholder = "please enter text"
        textField.frame = CGRect(x: 100, y: 250, width: 300, height: 50)
        self.view.addSubview(textField)
    }
    
    @objc
    func buttonClicked() {
        let viewcontroller2 = CodingViewController2()
        
        self.present(viewcontroller2, animated: true)
    }
    
}

class CodingViewController2: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .orange
        
    }
}


class CustomCell: UITableViewCell {
    
    var `switch` = UISwitch()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        `switch`.frame = CGRect(x: 100, y: 10, width: 50, height: 50)
        self.contentView.addSubview(`switch`)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class CodingViewController3: UIViewController {
    
    var toggles: [Bool] = [
        false,
        true,
        false,
        false
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configTableView()
    }
    
    func configTableView() {
        let tableView = UITableView()
        tableView.frame = CGRect(origin: .zero, size: self.view.frame.size)
        self.view.addSubview(tableView)
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        tableView.register(CustomCell.self, forCellReuseIdentifier: "CustomCell")
        tableView.dataSource = self
        tableView.delegate = self
    }
    
}

extension CodingViewController3: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(#function)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        print(#function)
    }
    
}

extension CodingViewController3: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toggles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
        
        cell.switch.isOn = toggles[indexPath.row]
        
        return cell
    }
    
}


