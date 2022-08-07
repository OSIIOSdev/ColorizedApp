//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Илья on 07.08.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var rgbView: UIView!
    
    @IBOutlet var redColorLabel: UILabel!
    @IBOutlet var greenColorLabel: UILabel!
    @IBOutlet var blueColorLabel: UILabel!
    
    @IBOutlet var redColorValue: UILabel!
    @IBOutlet var greenColorValue: UILabel!
    @IBOutlet var blueColorValue: UILabel!
    
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rgbView.layer.cornerRadius = 10
        
        redColorLabel.font = redColorLabel.font.withSize(10)
        greenColorLabel.font = greenColorLabel.font.withSize(10)
        blueColorLabel.font = blueColorLabel.font.withSize(10)
        
        redColorValue.font = redColorValue.font.withSize(10)
        greenColorValue.font = greenColorValue.font.withSize(10)
        blueColorValue.font = blueColorValue.font.withSize(10)
        
        redColorValue.text = "0"
        greenColorValue.text = "0"
        blueColorValue.text = "0"
        
        redColorSlider.minimumTrackTintColor = .red
        greenColorSlider.minimumTrackTintColor = .green
        blueColorSlider.minimumTrackTintColor = .blue
    }
    
    override func viewDidLayoutSubviews() {
        rgbView.backgroundColor = UIColor(red: CGFloat(redColorSlider.value / 100),
                                          green: CGFloat(greenColorSlider.value / 100),
                                          blue: CGFloat(blueColorSlider.value / 100),
                                          alpha: 1)
    }

    @IBAction func redColorSliderAction() {
        redColorValue.text = String(format: "%.0f", redColorSlider.value)
    }
    
    @IBAction func greenColorSliderAction() {
        greenColorValue.text = String(format: "%.0f", greenColorSlider.value)
    }
    
    @IBAction func blueColorSliderAction() {
        blueColorValue.text = String(format: "%.0f", blueColorSlider.value)
    }
    
    
    
}

