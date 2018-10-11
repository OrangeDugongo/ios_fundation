//
//  ViewController.swift
//  app-01
//
//  Created by mignoneraffaele on 24/09/2018.
//  Copyright © 2018 The Melons Salad. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }
    @IBAction func click(_ sender: Any) {
        lbHello.text = "Hello!"
    }
    
    @IBOutlet weak var lbHello: UILabel!
}
