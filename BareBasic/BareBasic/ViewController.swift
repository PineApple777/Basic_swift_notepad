//
//  ViewController.swift
//  BareBasic
//
//  Created by 정선욱 on 2017. 3. 10..
//  Copyright © 2017년 정선욱. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var thislabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func change(_ sender: Any) {
        thislabel.text = "Hello iPhone!!"
    }


}

