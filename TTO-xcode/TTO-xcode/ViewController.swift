//
//  ViewController.swift
//  TTO-xcode
//
//  Created by kkw on 2017. 5. 26..
//  Copyright © 2017년 kkw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
///////////////
    @IBOutlet weak var NumberCount: UITextField!
    
    @IBAction func FoodCount(_ sender: UIStepper) {
        NumberCount.text = Int(sender.value).description
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

