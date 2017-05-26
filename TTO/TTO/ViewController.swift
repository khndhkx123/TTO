//
//  ViewController.swift
//  TTO
//
//  Created by kkw on 2017. 5. 11..
//  Copyright © 2017년 kkw. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

   // @IBOutlet weak var NumberCount: UILabel!
    
    let bathroom = AVPlayer(url: Bundle.main.url(forResource: "bathroom", withExtension: "m4a")!)
    let busstop = AVPlayer(url: Bundle.main.url(forResource: "busstop", withExtension: "m4a")!)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Bathroom(_ sender: Any) {
        bathroom.play()
    }

    @IBAction func Busstop(_ sender: Any) {
        busstop.play()
    }

}

