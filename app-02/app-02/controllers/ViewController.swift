//
//  ViewController.swift
//  app-02
//
//  Created by mignoneraffaele on 26/09/2018.
//  Copyright © 2018 The Melons Salad. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var lb1: UILabel!
    @IBOutlet var textArea: UITextField!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func click(_ sender: Any) {
        lb1.text = "Mia Label"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "ToSecond"){
            let wc = segue.destination as! ViewControllerOne
            wc.test = "ciao"
        }
    }
    

}
