//
//  ViewController.swift
//  ShalginSR_HM2.2
//
//  Created by Станислав on 23.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Start state
        colorView.backgroundColor = .black
        colorView.layer.cornerRadius = 10
        
        redSlider.minimumTrackTintColor = .red
        setSliderStartValue(forSlider: redSlider)
        greenSlider.minimumTrackTintColor = .green
        setSliderStartValue(forSlider: greenSlider)
        blueSlider.minimumTrackTintColor = .blue
        setSliderStartValue(forSlider: blueSlider)

        redLabel.text = "Red: \(redSlider.value)"
        greenLabel.text = "Green: \(greenSlider.value)"
        blueLabel.text = "Blue: \(blueSlider.value)"
    }
    
    @IBAction func slidersAction(_ sender: Any) {
        
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        
        redLabel.text = "Red: \(round(redSlider.value * 100) / 100)"
        greenLabel.text = "Green: \(round(greenSlider.value * 100) / 100)"
        blueLabel.text = "Blue: \(round(blueSlider.value * 100) / 100)"
    }
    
    private func setSliderStartValue(forSlider: UISlider!) {
        forSlider.value = 0.0
        forSlider.minimumValue = 0.0
        forSlider.maximumValue = 1.0
    }
}


