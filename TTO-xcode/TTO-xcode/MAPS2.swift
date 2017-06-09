//Coffee Pension

import UIKit
import MapKit
import AVFoundation

class MAPS2: UIViewController {
    
    
    
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.1, 0.1)
        let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(37.688633, 128.469107)
        let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        map.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = location
        annotation.title = "Coffee Pension"
        annotation.subtitle = "Coffee Pension"
        map.addAnnotation(annotation)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    //************************************** 음식주문 *************************************************//
    
    let HB = AVPlayer(url: Bundle.main.url(forResource: "허브나라", withExtension: "mp4")!)
    let CF = AVPlayer(url: Bundle.main.url(forResource: "커피", withExtension: "mp4")!)
    let HS = AVPlayer(url: Bundle.main.url(forResource: "이효석", withExtension: "mp4")!)
    let WJ = AVPlayer(url: Bundle.main.url(forResource: "월정사", withExtension: "mp4")!)
    let OD = AVPlayer(url: Bundle.main.url(forResource: "오대산", withExtension: "mp4")!)
    let YD = AVPlayer(url: Bundle.main.url(forResource: "양떼", withExtension: "mp4")!)
    let SY = AVPlayer(url: Bundle.main.url(forResource: "삼양", withExtension: "mp4")!)
    let ST = AVPlayer(url: Bundle.main.url(forResource: "생태", withExtension: "mp4")!)
    let BL = AVPlayer(url: Bundle.main.url(forResource: "백룡", withExtension: "mp4")!)
    let ME = AVPlayer(url: Bundle.main.url(forResource: "무이", withExtension: "mp4")!)
    
    
    @IBAction func Play1(_ sender: Any) {
        BL.play()
    }
    @IBAction func Play2(_ sender: Any) {
        CF.play()
    }
    @IBAction func Play3(_ sender: Any) {
        ST.play()
    }
    @IBAction func Play4(_ sender: Any) {
        HB.play()
    }
    @IBAction func Play5(_ sender: Any) {
        OD.play()
    }
    @IBAction func Play6(_ sender: Any) {
        ME.play()
    }
    @IBAction func Play7(_ sender: Any) {
        SY.play()
    }
    @IBAction func Play8(_ sender: Any) {
        YD.play()
    }
    @IBAction func Play9(_ sender: Any) {
        WJ.play()
    }
    @IBAction func Play10(_ sender: Any) {
        HS.play()
    }
}
