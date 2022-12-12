//
//  ViewController.swift
//  Traffic Light
//
//  Created by Gleb Belanov on 11.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var lightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()  
        
        redLight.layer.cornerRadius = 70
        yellowLight.layer.cornerRadius = 70
        greenLight.layer.cornerRadius = 70
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
    }
    
    
    @IBAction func buttonLight() {
        if redLight.alpha != 1 && yellowLight.alpha != 1 {
            redLight.alpha = 1
            greenLight.alpha = 0.3
            lightButton.setTitle("Next", for: .normal)
        } else if yellowLight.alpha != 1 {
            yellowLight.alpha = 1
            redLight.alpha = 0.3
        } else {
            greenLight.alpha = 1
            yellowLight.alpha = 0.3
            redLight.alpha = 0.3
        }
        
    }
    
    
}
