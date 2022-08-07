//
//  ViewController.swift
//  Todo
//
//  Created by Weidong Gu on 2022/7/26.
//

import UIKit

class ViewController: UIViewController {

  var dataSource: [String] = []

  var tableView: UITableView?

  @IBAction func clickedAdd(_ sender: UIBarButtonItem) {
    performSegue(withIdentifier: "addTodo", sender: nil)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.

    tableView = UITableView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height))
    tableView?.delegate = self
    tableView?.dataSource = self
    tableView?.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    guard let tableView = tableView else { return }
    view.addSubview(tableView)
  }

  override func viewWillAppear(_ animated: Bool) {
    dataSource = StorageManager.getTodoList()
    tableView?.reloadData()
  }
}

extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return dataSource.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    cell.textLabel?.text = dataSource[indexPath.row]
    return cell
  }
}

extension ViewController: UITableViewDelegate {

}

