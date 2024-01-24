//
//  ViewController.swift
//  TIConverter
//
//  Created by Эльмир Юсупов on 22.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel! //цельсия
    @IBOutlet weak var farenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider!{
        didSet{
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func sliderValueChange(_ sender: UISlider){
        let temperatureCelsius = Int(round(sender.value))
        celsiusLabel.text = "\(temperatureCelsius)ºC"
        
        let temperatureFarenheit = Int(round(sender.value * 1.8 + 32))
        farenheitLabel.text = "\(temperatureFarenheit)ºC"
    }
    

}

