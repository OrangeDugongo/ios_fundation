//
//  ViewControllerThird.swift
//  app-03
//
//  Created by mignoneraffaele on 27/09/2018.
//  Copyright © 2018 The Melons Salad. All rights reserved.
//

import UIKit

class ViewControllerThird: UIViewController {

    @IBOutlet weak var label: UILabel!

    var str: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = str
        // Do any additional setup after loading the view.
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
