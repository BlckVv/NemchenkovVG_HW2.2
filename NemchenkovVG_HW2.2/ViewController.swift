//
//  ViewController.swift
//  NemchenkovVG_HW2.2
//
//  Created by Владимир Немченков on 10.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var red: UILabel!
    @IBOutlet weak var green: UILabel!
    @IBOutlet weak var blue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var rgbView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        red.text = String(redSlider.value)
        green.text = String(greenSlider.value)
        blue.text = String(blueSlider.value)
        
    }
    
    
    @IBAction func rgbAction() {
        
        red.text = String(round(100 * redSlider.value) / 100)
        green.text = String(round(100 * greenSlider.value) / 100)
        blue.text = String(round(100 * blueSlider.value) / 100)

        let redSliderValue = CGFloat(redSlider.value)
        let greenSliderValue = CGFloat(greenSlider.value)
        let blueSliderValue = CGFloat(blueSlider.value)
        
        rgbView.backgroundColor = UIColor(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, alpha: 1)
    }

}
