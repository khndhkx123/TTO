//
//  ViewController.swift
//  TTO-xcode
//
//  Created by kkw on 2017. 5. 26..
//  Copyright © 2017년 kkw. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
///////////////
    
    let bathroom = AVPlayer(url: Bundle.main.url(forResource: "bathroom", withExtension: "m4a")!)
    let busstop = AVPlayer(url: Bundle.main.url(forResource: "busstop", withExtension: "m4a")!)
    
    @IBOutlet weak var NumberCount: UITextField!
    
    @IBAction func FoodCount(_ sender: UIStepper) {
        NumberCount.text = Int(sender.value).description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func BathroomPlay(_ sender: Any) {
        bathroom.play()
    }
    @IBAction func BusstopPlay(_ sender: Any) {
        busstop.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

