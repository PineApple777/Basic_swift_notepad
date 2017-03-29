//
//  ViewController.swift
//  MoneyConverter
//
//  Created by 정선욱 on 2017. 3. 10..
//  Copyright © 2017년 정선욱. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currencysegment: UISegmentedControl!
    
    @IBOutlet weak var sourcemoneyfield: UITextField!
    
    @IBOutlet weak var targetmoneylabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertmoney(_ sender: Any) {
        
        guard let sourceCurrency = Currency(rawValue: currencysegment.selectedSegmentIndex) else {
            print("Source Currency Error")
            return
        }
        
        guard let sourceAmount = Double(sourcemoneyfield.text!) else {
            targetmoneylabel.text = "Error"
            return
        }
        
        let sourceMoney = Money(sourceAmount, currency: sourceCurrency)
        
        var targetmoneystring = ""
        
        for i in 0 ..< 4 {
            targetmoneystring += sourceMoney.valueincurrency(currency: Currency.init(rawValue: i)!)
            targetmoneystring += "\r\n"
        }
        
        targetmoneylabel.text = targetmoneystring
    }

}

