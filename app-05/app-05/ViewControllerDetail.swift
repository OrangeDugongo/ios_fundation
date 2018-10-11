//
//  ViewControllerDetail.swift
//  app-05
//
//  Created by mignoneraffaele on 29/09/2018.
//  Copyright © 2018 The melons salad. All rights reserved.
//

import UIKit

class ViewControllerDetail: UIViewController {
    
    var rName: String?
    var rImageName: String?
    
    @IBOutlet var back: UIImageView!
    @IBOutlet var image: UIImageView!
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = rName
        image.image = UIImage(named: rImageName!)
        back.image = UIImage(named: rImageName!)

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
