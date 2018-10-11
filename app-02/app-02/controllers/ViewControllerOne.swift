//
//  ViewControllerOne.swift
//  app-02
//
//  Created by mignoneraffaele on 26/09/2018.
//  Copyright © 2018 The Melons Salad. All rights reserved.
//

import UIKit

class ViewControllerOne: UIViewController {

    @IBOutlet weak var lb: UILabel!
    
    var test: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func click(_ sender: Any) {
        lb.text = test
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
