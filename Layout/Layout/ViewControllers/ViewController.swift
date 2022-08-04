//
//  ViewController.swift
//  Coding
//
//  Created by Junjie Huang on 2022/8/4.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.button.setTitle("new title", for: .normal)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToNextVC" {
            (segue.destination as! ViewController2).text = "text from view controller"
        }
    }
}

class ViewController2: UIViewController {
    
    var text: String = ""
    
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.label.text = self.text
    }
}
