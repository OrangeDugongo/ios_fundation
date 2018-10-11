//
//  ViewControllerDatail.swift
//  app-04
//
//  Created by mignoneraffaele on 27/09/2018.
//  Copyright © 2018 The melons salad. All rights reserved.
//

import UIKit

class ViewControllerDatail: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var detail: UITextView!
    
    var rName: String?
    var rImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbTitle.text = rName
        image.image = UIImage(named: rImage!)
        detail.text = """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec viverra velit varius venenatis egestas. Donec a tellus mattis, molestie odio vel, dictum eros. In hendrerit risus ut mi feugiat congue. Quisque at metus ac urna ultrices consequat. Vivamus pellentesque accumsan vestibulum. Suspendisse pharetra vitae nisi faucibus blandit. Ut accumsan condimentum tortor ut ornare. Nulla iaculis condimentum orci sed consequat. Praesent est ipsum, lacinia sit amet aliquet gravida, efficitur at erat.
        
        Donec nec elit lacinia, ultrices lacus vitae, imperdiet neque. Quisque arcu tellus, sagittis vitae magna a, commodo semper ipsum. Sed consectetur erat sed diam auctor, et euismod dui ultricies. Donec eu luctus sem, auctor tincidunt mi. Sed interdum euismod ex, eu euismod erat auctor vel. Aliquam dapibus mattis nunc quis rutrum. Cras semper, libero sit amet ullamcorper interdum, nisi nulla porttitor mauris, sit amet posuere odio dolor ultrices nisi.
        
        Vivamus dignissim vulputate sapien vitae dictum. Quisque neque turpis, faucibus et bibendum vitae, dignissim a mi. Maecenas faucibus congue mauris, quis hendrerit erat ornare quis. Ut venenatis ac metus non aliquet. Nam ut turpis erat. Vestibulum arcu elit, imperdiet at fringilla vel, faucibus nec nisl. Sed ex nisl, condimentum quis lacinia ut, tempus eget lorem.
        
        Phasellus a ex feugiat, auctor est at, consectetur arcu. Aenean at purus sit amet lectus dignissim euismod luctus at mi. Suspendisse rhoncus, dolor non consectetur mattis, nibh purus tristique diam, in condimentum nisi dui quis ligula. Nullam efficitur aliquam sapien convallis euismod. In id elit tempor, suscipit velit sodales, rutrum nibh. Proin sit amet orci in erat elementum placerat. Proin malesuada sit amet erat non rhoncus. Maecenas fermentum nibh enim, rhoncus suscipit eros euismod id. Morbi condimentum lacus sit amet sollicitudin pretium. Fusce sit amet eros et odio tristique porta. Morbi auctor ligula non tristique fringilla. Morbi at orci nisl. Ut eleifend pellentesque dui a malesuada. Sed dapibus ligula vitae libero tempus, ornare tincidunt nunc consectetur. Praesent eu velit elit. Ut tortor dui, imperdiet non mi ac, feugiat ultrices turpis.
        
        Aenean mattis dui ex. Nullam lobortis efficitur neque, non egestas est commodo non. Praesent eget dui erat. Cras quis efficitur ipsum, consequat dapibus orci. In quis sodales metus. Nulla id nisl orci. Vivamus egestas varius magna sit amet pellentesque. Mauris vel scelerisque leo, a dapibus metus. Morbi at aliquam quam. Curabitur id tempus nunc. Praesent et malesuada sapien. Cras laoreet varius ex at pellentesque.
        """
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
