//
//  ViewController.swift
//  ryu_kadai3
//
//  Created by 辻野竜志 on 2023/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func didTapButton(_ sender: Any) {
        
        let number1 = Int(textField1.text ?? "") ?? 0
        let number2 = Int(textField2.text ?? "") ?? 0

        let numberLabel1 = switch1.isOn ? -number1 : number1
        let numberLabel2 = switch2.isOn ? -number2 : number2
        
        label1.text = "\(numberLabel1)"
        label2.text = "\(numberLabel2)"
        resultLabel.text = "\(numberLabel1 + numberLabel2)"
    }
}
