

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
    var flag = 0
    let PLAYER = PLAY()
    
    let bathroom = AVPlayer(url: Bundle.main.url(forResource: "bathroom", withExtension: "m4a")!)
    let busstop = AVPlayer(url: Bundle.main.url(forResource: "busstop", withExtension: "m4a")!)
    
    let BB = AVPlayer(url: Bundle.main.url(forResource: "비빔", withExtension: "m4a")!)
    
    let NM = AVPlayer(url: Bundle.main.url(forResource: "냉면", withExtension: "m4a")!)
    
    let DGS = AVPlayer(url: Bundle.main.url(forResource: "돈까스", withExtension: "m4a")!)
    
    let BGG = AVPlayer(url: Bundle.main.url(forResource: "불고기", withExtension: "m4a")!)
    
    let KB = AVPlayer(url: Bundle.main.url(forResource: "김밥", withExtension: "m4a")!)
    
    let DG = AVPlayer(url: Bundle.main.url(forResource: "된장찌개", withExtension: "m4a")!)
    
    let GB = AVPlayer(url: Bundle.main.url(forResource: "갈비탕", withExtension: "m4a")!)
    
    let SG = AVPlayer(url: Bundle.main.url(forResource: "삼계탕", withExtension: "m4a")!)
    
    let SD = AVPlayer(url: Bundle.main.url(forResource: "순대", withExtension: "m4a")!)
    
    let DBG = AVPlayer(url: Bundle.main.url(forResource: "떡", withExtension: "m4a")!)
    
    let ZC = AVPlayer(url: Bundle.main.url(forResource: "잡채", withExtension: "m4a")!)
    
    let KC = AVPlayer(url: Bundle.main.url(forResource: "김치", withExtension: "m4a")!)
    
    
    
    
    
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
        BB.play()
        PLAYER.Play(COUNT: COUNT)
    }
}


