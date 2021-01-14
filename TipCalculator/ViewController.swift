//
//  ViewController.swift
//  TipCalculator
//
//  Created by Mila Paymukhina on 12.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textCustomTotalLabel: UILabel!
    @IBOutlet weak var yourTipLabel: UILabel!
    @IBOutlet weak var textPercentageLabel: UILabel!
    @IBOutlet weak var hundredLabel: UILabel!
    @IBOutlet weak var zeroLabel: UILabel!
    @IBOutlet weak var textTotalLabel: UILabel!
    @IBOutlet weak var textTipLabel: UILabel!
    @IBOutlet weak var textBillLabel: UILabel!
    @IBOutlet weak var heading2Label: UILabel!
    @IBOutlet weak var heading1Label: UILabel!
    @IBOutlet weak var modeLabel: UILabel!
    @IBOutlet weak var modeSwitch: UISwitch!
    
    @IBOutlet weak var customTotalLabel: UILabel!
    @IBOutlet weak var customTipLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        // print("Hi there")
        
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // bill amount
        let bill = Double(billField.text!) ?? 0
        
        // calculation
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // updating labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    @IBAction func CalculateCustomTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        let customTipPercentage = Int(tipSlider.value)
        let customTip = Double(customTipPercentage) * 0.01 * bill
        let customTotal = customTip + bill
        
        
        tipPercentageLabel.text = "\(customTipPercentage)%"
        customTipLabel.text = String(format: "$%.2f", customTip)
        customTotalLabel.text = String(format: "$%.2f", customTotal)
    }
    
    @IBAction func modeChange(_ sender: Any) {
        if modeSwitch.isOn == true {
            view.backgroundColor = UIColor.black
            modeLabel.textColor = UIColor.white
            customTipLabel.textColor = UIColor.white
            tipLabel.textColor = UIColor.white
            totalLabel.textColor = UIColor.white
            tipPercentageLabel.textColor = UIColor.white
            customTotalLabel.textColor = UIColor.white
            heading1Label.textColor = UIColor.white
            heading2Label.textColor = UIColor.white
            yourTipLabel.textColor = UIColor.white
            textTipLabel.textColor = UIColor.white
            textBillLabel.textColor = UIColor.white
            textTotalLabel.textColor = UIColor.white
            textPercentageLabel.textColor = UIColor.white
            textCustomTotalLabel.textColor = UIColor.white
            zeroLabel.textColor = UIColor.white
            hundredLabel.textColor = UIColor.white
            
            
        } else {
            view.backgroundColor = UIColor.white
            modeLabel.textColor = UIColor.black
            customTipLabel.textColor = UIColor.black
            tipLabel.textColor = UIColor.black
            totalLabel.textColor = UIColor.black
            tipPercentageLabel.textColor = UIColor.black
            customTotalLabel.textColor = UIColor.black
            heading1Label.textColor = UIColor.black
            heading2Label.textColor = UIColor.black
            yourTipLabel.textColor = UIColor.black
            textTipLabel.textColor = UIColor.black
            textBillLabel.textColor = UIColor.black
            textTotalLabel.textColor = UIColor.black
            textPercentageLabel.textColor = UIColor.black
            textCustomTotalLabel.textColor = UIColor.black
            zeroLabel.textColor = UIColor.black
            hundredLabel.textColor = UIColor.black

            
        }
    }
    
    
}

