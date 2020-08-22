//
//  ViewController.swift
//  UIKitAppIos
//
//  Created by Rasikon on 22.08.2020.
//  Copyright © 2020 Rasikon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLabel.text = String(sliderRed.value)
        greenLabel.text = String(sliderGreen.value)
        blueLabel.text = String(sliderBlue.value)
        
    }
    
    override func viewWillLayoutSubviews() {
        colorView.layer.cornerRadius = 10
    }
    
    @IBAction func changeRedColor() {
        let redValue = CGFloat(sliderRed.value)
        let greenValue = CGFloat(sliderGreen.value)
        let blueValue = CGFloat(sliderBlue.value)
        
        redLabel.text = String(format: "%.2f", redValue)
        greenLabel.text = String(format: "%.2f", greenValue)
        blueLabel.text = String(format: "%.2f", blueValue)
        
        colorView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1)
        
    }
    
}

