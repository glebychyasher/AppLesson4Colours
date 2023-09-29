//
//  ViewController.swift
//  AppLesson4Colours
//
//  Created by Глеб Зобнин on 29.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blueValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var redValueLabel: UILabel!
    
    @IBOutlet weak var blueSliderOutlet: UISlider!
    @IBOutlet weak var greenSliderOutlet: UISlider!
    @IBOutlet weak var redSliderOutlet: UISlider!
    
    @IBOutlet weak var paletteView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        paletteView.layer.cornerRadius = 25
        setInitialValues()
        setPaletteColour()
    }

    @IBAction func redSliderAction() {
        redValueLabel.text = String(format: "%.2f", redSliderOutlet.value)
        setPaletteColour()
    }
    @IBAction func greenSliderAction() {
        greenValueLabel.text = String(format: "%.2f", greenSliderOutlet.value)
        setPaletteColour()
    }
    @IBAction func blueSliderAction() {
        blueValueLabel.text = String(format: "%.2f", blueSliderOutlet.value)
        setPaletteColour()
    }
}
//MARK: Set the colour of palelle (paletteView)
extension ViewController {
    private func setPaletteColour() {
        paletteView.backgroundColor = UIColor(
            red: CGFloat(redSliderOutlet.value),
            green: CGFloat(greenSliderOutlet.value),
            blue: CGFloat(blueSliderOutlet.value),
            alpha: 1
        )
    }
}
//MARK: Set initial values to labels
extension ViewController {
    private func setInitialValues() {
        redValueLabel.text = String(format: "%.2f", redSliderOutlet.value)
        greenValueLabel.text = String(format: "%.2f", greenSliderOutlet.value)
        blueValueLabel.text = String(format: "%.2f", blueSliderOutlet.value)
    }
}
