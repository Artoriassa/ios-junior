//
//  CodingViewController3.swift
//  Layout
//
//  Created by Junjie Huang on 2022/8/4.
//

import UIKit

class CodingViewController3: UIViewController {
    
    static let CustomCellIdentifier = "CustomCell"
    static let UITableViewCellIdentifier = "UITableViewCell"
    
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
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: CodingViewController3.UITableViewCellIdentifier)
        tableView.register(CustomCell.self, forCellReuseIdentifier: CodingViewController3.CustomCellIdentifier)
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
        let cell = tableView.dequeueReusableCell(withIdentifier: CodingViewController3.CustomCellIdentifier) as! CustomCell
        
        cell.switch.isOn = toggles[indexPath.row]
        return cell
    }
}

