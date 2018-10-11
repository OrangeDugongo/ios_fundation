//
//  ViewControllerOne.swift
//  app-03
//
//  Created by mignoneraffaele on 27/09/2018.
//  Copyright © 2018 The Melons Salad. All rights reserved.
//

import UIKit

class ViewControllerOne: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        switch segue.identifier {
        case "toSecond":
            let vc = segue.destination as! ViewControllerSecond
            vc.str = "Sono il secondo"
        case "toThird":
            let vc = segue.destination as! ViewControllerThird
            vc.str = "Sono il terzo"
        default: break
        }
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
