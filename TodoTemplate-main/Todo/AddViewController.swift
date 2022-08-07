//
//  AddViewController.swift
//  Todo
//
//  Created by Junjie Huang on 2022/8/6.
//

import Foundation
import UIKit

class AddViewController: UIViewController {

  @IBOutlet weak var input: UITextField!
  @IBAction func clickedConfirm(_ sender: UIButton) {
    let content = input.text
    guard let content = content else {
      return
    }
    StorageManager.saveTodoItem(content: content)
    navigationController?.popViewController(animated: true)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
  }
}

