//
//  ViewController.swift
//  App
//
//  Created by Anderson Santos Gusmao on 12/09/17.
//  Copyright © 2017 Heuristisk. All rights reserved.
//

import UIKit
import hkMotus

class ViewController: UITableViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tableView.reloadData(effect: .roll)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = String("Row number \(indexPath.row)")
        return cell
    }
}

