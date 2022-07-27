//
//  ViewController.swift
//  TempConverter
//
//  Created by Danil Fishchenko on 14.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider!{
        didSet{
            slider.maximumValue = 100
            slider.minimumValue = -100
            slider.value = 0
        }
    }
    @IBAction func sliderChanged(_ sender: UISlider) {
        let tempertureCelsius = Int(round(sender.value))
        celsiusLabel.text = "\(tempertureCelsius)ºC"
        let temperatureFharenheit = tempertureCelsius*9/5+32
        fahrenheitLabel.text = "\(temperatureFharenheit)ºF"
    }
    
}

