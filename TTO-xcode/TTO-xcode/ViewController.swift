

import UIKit
import AVFoundation

class ViewController: UIViewController {

    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) { // 딜레이 함수

        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }
    
    var COUNT = 0 // 카운트를 받을 변수
    let PLAYER = PLAY()  // 음성주문 클라스 오브젝트 생성
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

//************************************** 일상질문 *************************************************//

    let bathroom = AVPlayer(url: Bundle.main.url(forResource: "bathroom", withExtension: "m4a")!)
    let busstop = AVPlayer(url: Bundle.main.url(forResource: "busstop", withExtension: "m4a")!)
    
    @IBAction func BathroomPlay(_ sender: Any) {
        bathroom.play()
    }
    @IBAction func BusstopPlay(_ sender: Any) {
        busstop.play()
    }

    
//************************************** 음식주문 *************************************************//
    
    @IBOutlet weak var NumberCount: UITextField!
    
    @IBAction func FoodCount(_ sender: UIStepper) {
        NumberCount.text = Int(sender.value).description
        COUNT = Int(NumberCount.text!)!
        
    }
    
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

    @IBAction func ORDER(_ sender: Any) {
        BB.play()
        PLAYER.Play(COUNT: COUNT)
    }
    @IBAction func NM_order(_ sender: Any) {
        NM.play()
        PLAYER.Play(COUNT: COUNT)
    }
    @IBAction func DGS_order(_ sender: Any) {
        DGS.play()
        PLAYER.Play(COUNT: COUNT)
    }
    @IBAction func BGG_orderr(_ sender: Any) {
        BGG.play()
        PLAYER.Play(COUNT: COUNT)
    }
    @IBAction func KB_order(_ sender: Any) {
        KB.play()
        PLAYER.Play(COUNT: COUNT)
    }
    @IBAction func DG_order(_ sender: Any) {
        DG.play()
        PLAYER.Play(COUNT: COUNT)
    }
    @IBAction func GB_order(_ sender: Any) {
        GB.play()
        PLAYER.Play(COUNT: COUNT)
    }
    @IBAction func SG_order(_ sender: Any) {
        SG.play()
        PLAYER.Play(COUNT: COUNT)
    }
    @IBAction func SD_order(_ sender: Any) {
        SD.play()
        PLAYER.Play(COUNT: COUNT)
    }
    @IBAction func DBG_order(_ sender: Any) {
        DBG.play()
        PLAYER.Play(COUNT: COUNT)
    }
    @IBAction func ZC_order(_ sender: Any) {
        ZC.play()
        PLAYER.Play(COUNT: COUNT)
    }
    @IBAction func KC_order(_ sender: Any) {
        KC.play()
        PLAYER.Play(COUNT: COUNT)
    }
}
