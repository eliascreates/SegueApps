//
//  ViewController.swift
//  exampeUikit
//
//  Created by IACD 013 on 2022/09/28.
//

import UIKit

class ColourSliderViewController: UIViewController {
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    //@IBOutlet weak var lbHue: UIView!
    
    
    
    @IBOutlet weak var lbHue: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbHue.backgroundColor = UIColor(red: 128/255, green: 128/255, blue: 128/255, alpha: 1)
    }
    
    
    @IBAction func changeRedColor(_ sender: UISlider) {
        
        lbHue.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1)
    }
    
    
    @IBAction func changeGreenColor(_ sender: UISlider) {
        lbHue.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1)
    }
    
    @IBAction func changeBlueColor(_ sender: Any) {
        lbHue.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1)
    }
    
}

