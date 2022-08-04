//
//  CustomCell.swift
//  Layout
//
//  Created by Junjie Huang on 2022/8/4.
//

import UIKit

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
