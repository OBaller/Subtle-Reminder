//
//  ViewController.swift
//  Reminder
//
//  Created by apple on 04/08/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var table: UITableView!

    var model = [MyReminder]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = model[indexPath.row].title
        return cell
    }
    
    @IBAction func didTapAdd() {
        
    }
    
    @IBAction func didTapTest() {
        
    }
}


struct MyReminder {
    let title: String
    let date: Date
    let identifier: String
}
