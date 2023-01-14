//
//  ViewController.swift
//  CalculatorApp
//
//  Created by IACD 013 on 2022/10/20.
//
import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var showNums: UILabel!
    @IBOutlet weak var screen: UILabel!
    var prev = 0.0
//    var freezeNum = 0.0
    var rator = -1
    var clear = true
//    var contPattern = false
    var result = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func captureNum(_ sender: UIButton) {
        if clear == true {
            screen.text = String()
            clear = false
        }
        if sender.tag == 17 && !screen.text!.contains(".") { //17. Point-button
            screen.text = screen.text! + "."
        }
        else {
            screen.text = screen.text! + String(sender.tag)
        }
//        contPattern = false
    }
    
    @IBAction func operations(_ sender: UIButton) {
        if sender.tag == 10 { //10. Clear-button
            screen.text = String()
            prev = 0
            result = 0
            rator = -1
        } else if screen.text != "" {
            
            if let value = Double(screen.text!) {
                prev = value
            }
//            else if sender.tag != 18 {
//                return
//            }
            
            if let btnTitle = sender.titleLabel!.text { screen.text = btnTitle }
            
            if rator == -1 {
                result = prev
            }
            else {
                switch(rator) {
                case 13: //divide
                    result /= prev
                case 14: //multiply
                    result *= prev
                case 15: //substract
                    result -= prev
                case 16: // add
                    result += prev
                default:
                    screen.text = "error"
                }
                showNums.text = String(result)
            }
            if sender.tag == 18 { //18. Equal Button
                screen.text = String(result)
//                if contPattern == true {
                rator = -1
//                    freezeNum = prev
//                }
            }
            else {
                rator = sender.tag
            }
            clear = true
//            contPattern = true
        }
    }
    
}
