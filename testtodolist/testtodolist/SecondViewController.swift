//
//  SecondViewController.swift
//  testtodolist
//
//  Created by CODIUM Company on 25/11/2561 BE.
//  Copyright © 2561 CODIUM Company. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    
    @IBAction func addItem(_ sender: Any) {
        
        if (input.text != "") {
            list.append(input.text!)
            input.text = ""
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

