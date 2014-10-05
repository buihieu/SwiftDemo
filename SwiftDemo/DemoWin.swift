//
//  DemoWin.swift
//  SwiftDemo
//
//  Created by Trinh Minh Cuong on 9/29/14.
//  Copyright (c) 2014 Techmaster Vietnam. All rights reserved.
//

import UIKit

class DemoWin: UIViewController {

    @IBOutlet weak var number: UITextField!
    
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func calculatePRO(sender: AnyObject) {
        var ketqua: Int = 1
        if let num = number.text.toInt() {
            if num > 0 {
                for i in 1...num {
                    ketqua *= i
                }
            } else if num < 0 {
                result.text = "Number cannot be negative"
                return
            }
            result.text = "\(ketqua)"
        } else {
            result.text = "Type correct number"
        }
    }
    @IBAction func onSliderChange(sender: UISlider) {
        
        result.text = String(format: "%3.2f", sender.value)
    }
}
