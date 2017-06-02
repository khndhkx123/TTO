//
//  MAPS.swift
//  TTO-xcode
//
//  Created by kkw on 2017. 6. 2..
//  Copyright © 2017년 kkw. All rights reserved.
//

import UIKit
import MapKit

class MAPS: UIViewController {
    
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.1, 0.1)
        let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(37.277771, 128.576995)
        let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        map.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = location
        annotation.title = "Cave"
        annotation.subtitle = "Baengyong Cave"
        map.addAnnotation(annotation)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
