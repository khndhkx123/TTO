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
    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }
    
    var COUNT = 0
    
    let ONE = AVPlayer(url: Bundle.main.url(forResource: "한", withExtension: "mp4")!)
    
    let TWO = AVPlayer(url: Bundle.main.url(forResource: "두", withExtension: "mp4")!)
    
    let THREE = AVPlayer(url: Bundle.main.url(forResource: "세", withExtension: "mp4")!)
    
    let GIVE = AVPlayer(url: Bundle.main.url(forResource: "개 주세요", withExtension: "mp4")!)

    
    
    let bathroom = AVPlayer(url: Bundle.main.url(forResource: "bathroom", withExtension: "m4a")!)
    let busstop = AVPlayer(url: Bundle.main.url(forResource: "busstop", withExtension: "m4a")!)
    
    @IBOutlet weak var NumberCount: UITextField!
    
    @IBAction func FoodCount(_ sender: UIStepper) {
        NumberCount.text = Int(sender.value).description
        COUNT = Int(NumberCount.text!)!

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
    @IBAction func ORDER(_ sender: Any) {
        switch (COUNT / 10) {
        case 0 :
            ONE.play()
            switch COUNT{
            case 0:
                break
            case 1:
                delayWithSeconds(1.2) {
                    self.ONE.play()
                }
                break
            case 2:
                delayWithSeconds(1.2) {
                    self.TWO.play()
                }
                break
            case 3:
                break
            case 4:
                break
            case 5:
                break
            case 6:
                break
            case 7:
                break
            case 8:
                break
            case 9:
                break
            default :
                break
            }
            break
        case 1 : break
        case 2 : break
        case 3 : break
        case 4 : break
        case 5 : break
        case 6 : break
        case 7 : break
        case 8 : break
        case 9 : break
        default :
            THREE.play()
            break
        }
        
        delayWithSeconds(1.3) {
            self.GIVE.play()
        }
        
        

        
    }
    
    


}

