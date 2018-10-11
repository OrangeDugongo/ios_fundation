//
//  ViewController.swift
//  mappina
//
//  Created by mignoneraffaele on 02/10/2018.
//  Copyright © 2018 The Melons Salad. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet var map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        map.delegate = self
        map.showsCompass = true
        map.showsScale = true
        map.showsTraffic = true
        
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString("Sliema, malta", completionHandler: { (placeMark, err) in
            if let error = err {
                print(error)
                return
            }
            
            if let place = placeMark {
                let label = MKPointAnnotation()
                label.title = "Vacanza"
                if let location = place[0].location {
                    label.coordinate = location.coordinate
                    self.map.showAnnotations([label], animated: true)
                    self.map.selectAnnotation(label, animated: true)
                }
            }
            
            })
    }


}

