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
    
    let students = ["Ivan", "Miroslav", "Gurgen"]
    // First commit

    override func viewDidLoad() {
        super.viewDidLoad()
        
        studentListTableView.dataSource = self

    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = students[indexPath.row]
        
        return cell
    }
    
    
}
