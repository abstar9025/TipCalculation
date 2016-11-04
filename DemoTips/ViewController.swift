//
//  ViewController.swift
//  DemoTips
//
//  Created by R on 2016/10/24.
//  Copyright © 2016年 R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountBeforeTax: UITextField!
    @IBOutlet weak var amountBeforeTax2: UITextField!
    @IBOutlet weak var tipPercentage: UITextField!
    @IBOutlet weak var howTip: UILabel!
    
    @IBAction func calc(_ sender: UIButton) {
        let amountBT:Double? = Double(amountBeforeTax.text!)
        let amountBT2:Double? = Double(amountBeforeTax2.text!)
        let tipP:Double? = Double(tipPercentage.text!)
        
        if amountBT == nil || amountBT2 == nil || tipP == nil {
            howTip.text = "Please input 0 in the blank space."
        }else{
        let tipTotal = (amountBT! + amountBT2! / 100) * (tipP! / 100)
        amountBeforeTax.text = ""
        amountBeforeTax2.text = ""
        tipPercentage.text = ""
        let total = String(format:"%.2f",tipTotal)
        howTip.text = "You tips: " + "\(total)"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

