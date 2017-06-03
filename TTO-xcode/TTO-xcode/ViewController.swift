

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
        PLAYER.Play(COUNT: COUNT)
    }
}


