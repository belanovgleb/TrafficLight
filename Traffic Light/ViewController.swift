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
        
        func setupView(_ view: UIView) {
            view.layer.cornerRadius = view.frame.width / 2
            view.alpha = 0.3
        }
        
        setupView(redLight)
        setupView(yellowLight)
        setupView(greenLight)
        
    }
    
    
    @IBAction func lightButtonTapped() {
        lightButton.setTitle("Next", for: .normal)
        if redLight.alpha != 1 && yellowLight.alpha != 1 {
            redLight.alpha = 1
            greenLight.alpha = 0.3
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
