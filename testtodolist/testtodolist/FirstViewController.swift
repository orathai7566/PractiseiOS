//
//  FirstViewController.swift
//  testtodolist
//
//  Created by CODIUM Company on 25/11/2561 BE.
//  Copyright © 2561 CODIUM Company. All rights reserved.
//

import UIKit

var list = ["Buy milk","Run 5 miles","Get Peter","Plant my new plants"]

class FirstViewController: UIViewController, UITableViewDataSource ,UITableViewDelegate
{
    @IBOutlet weak var myTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (list.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        
        return (cell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            list.remove(at: indexPath.row)
            myTableView.reloadData()
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

