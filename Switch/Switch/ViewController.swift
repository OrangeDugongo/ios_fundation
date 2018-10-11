//
//  ViewController.swift
//  Switch
//
//  Created by mignoneraffaele on 01/10/2018.
//  Copyright © 2018 The Melons Salad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!    // https://developer.apple.com/documentation/uikit/uislider
    @IBOutlet var label: UILabel!
    @IBOutlet var mSwitch: UISwitch!        // https://developer.apple.com/documentation/uikit/uiswitch
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.minimumValue = 10
        slider.maximumValue = 30
        slider.value = Float(label.font.pointSize)
        slider.minimumTrackTintColor = UIColor(red: 0, green: 255, blue: 0, alpha: 100)
        mSwitch.onTintColor = UIColor(red: 0, green: 255, blue: 0, alpha: 100)
    }

    @IBAction func onGreenClick(_ sender: Any) {
        mSwitch.onTintColor = UIColor(red: 0, green: 255, blue: 0, alpha: 100)
        slider.minimumTrackTintColor = UIColor(red: 0, green: 255, blue: 0, alpha: 100)

    }
    
    @IBAction func onRedClick(_ sender: Any) {
        mSwitch.onTintColor = UIColor(red: 255, green: 0, blue: 0, alpha: 100)
        slider.minimumTrackTintColor = UIColor(red: 255, green: 0, blue: 0, alpha: 100)
    }
    
    @IBAction func onBlueClick(_ sender: Any) {
        mSwitch.onTintColor = UIColor(red: 0, green: 0, blue: 255, alpha: 100)
        slider.minimumTrackTintColor = UIColor(red: 0, green: 0, blue: 255, alpha: 100)
    }
    
    @IBAction func onSwitchChange(_ sender: UISwitch) {
        label.isHidden = !sender.isOn
    }
    
    @IBAction func onSliderChange(_ sender: UISlider) {
        if(sender.value == sender.maximumValue){
            label.text = "Vai dall'oculista"
        } else {
            label.text = "Hello world!"
            label.font = UIFont(name: label.font.fontName, size: CGFloat(sender.value))
        }
        
    }
}

