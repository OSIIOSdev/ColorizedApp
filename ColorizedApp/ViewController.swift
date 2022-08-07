//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Илья on 07.08.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var rgbView: UIView!
    
    @IBOutlet var redColorValue: UILabel!
    @IBOutlet var greenColorValue: UILabel!
    @IBOutlet var blueColorValue: UILabel!
    
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rgbView.layer.cornerRadius = 10
        
        redColorLabelsSettings()
        greenColorLabelsSettings()
        blueColorLabelsSettings()
        
        redColorSliderSettings()
        greenColorSliderSettings()
        blueColorSliderSettings()
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
    
    //MARK: - Private methods
    private func redColorLabelsSettings() {
        redColorValue.font = redColorValue.font.withSize(10)
        redColorValue.text = "0"
    }
    
    private func greenColorLabelsSettings() {
        greenColorValue.font = greenColorValue.font.withSize(10)
        greenColorValue.text = "0"
    }
    
    private func blueColorLabelsSettings() {
        blueColorValue.font = blueColorValue.font.withSize(10)
        blueColorValue.text = "0"
    }
    
    private func redColorSliderSettings() {
        redColorSlider.minimumTrackTintColor = .red
        
        redColorSlider.minimumValue = 0
        redColorSlider.maximumValue = 100
        redColorSlider.value = 0
    }
    
    private func greenColorSliderSettings() {
        greenColorSlider.minimumTrackTintColor = .green
        
        greenColorSlider.minimumValue = 0
        greenColorSlider.maximumValue = 100
        greenColorSlider.value = 0
    }
    
    private func blueColorSliderSettings() {
        blueColorSlider.minimumTrackTintColor = .blue
        
        blueColorSlider.minimumValue = 0
        blueColorSlider.maximumValue = 100
        blueColorSlider.value = 0
    }
    
}

