//
//  ViewController.swift
//  StudentList
//
//  Created by Art Karma on 4/29/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var studentListTableView: UITableView!
    // First commit

    override func viewDidLoad() {
        super.viewDidLoad()
        
        studentListTableView.dataSource = self

    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        cell.textLabel?.text = "123"
        return cell
    }
    
    
}
