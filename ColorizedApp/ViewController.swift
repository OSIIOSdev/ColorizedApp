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
        
        colorLabelSettings(redColorValue)
        colorLabelSettings(greenColorValue)
        colorLabelSettings(blueColorValue)
        
        colorSliderSettings(redColorSlider, color: .red)
        colorSliderSettings(greenColorSlider, color: .green)
        colorSliderSettings(blueColorSlider, color: .blue)
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
    private func colorSliderSettings(_ slider: UISlider, color: UIColor) {
        slider.minimumTrackTintColor = color
        
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = 0
    }
    
    private func colorLabelSettings(_ value: UILabel) {
        value.font = value.font.withSize(10)
        value.text = "0"
    }
}

