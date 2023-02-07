//
//  ViewController.swift
//  ColorizedApp
//
//  Created by user on 06.02.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 15
 
        redSlider.value = 35
        greenSlider.value = 46
        blueSlider.value = 120
        
      setLabelText()
    }

    @IBAction func setBackgroundColor() {
    colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 255,
                                      green: CGFloat(greenSlider.value) / 255,
                                      blue: CGFloat(blueSlider.value) / 255,
                                      alpha: 1)
       setLabelText()
        
    }
    private func setLabelText() {
        redLabel.text = String(Int(redSlider.value / 255 * 100))
        greenLabel.text = String(Int(greenSlider.value / 255 * 100))
        blueLabel.text = String(Int(blueSlider.value / 255 * 100))
        
    }
}
