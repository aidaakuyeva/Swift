//
//  ViewController.swift
//  mapProject2
//
//  Created by Aida on 8/20/19.
//  Copyright © 2019 Upperline School of Code. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var theMap: MKMapView!
    
let LMHQ = CLLocationCoordinate2DMake(40.709480, -74.010234)

    let empire = CLLocationCoordinate2DMake(40.7484,-73.9857 )
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func lmhqPress(_ sender: Any) {

        centerOn(place: LMHQ)
        let LMHQ = MKPointAnnotation()
        LMHQ.title = "LMHQ"
        LMHQ.coordinate = CLLocationCoordinate2D( latitude: 40.709480, longitude: -74.010234)
        theMap.addAnnotation(LMHQ)
    }
    
    @IBAction func empirePressed(_ sender: UIButton) {
        centerOn(place: empire)
        let empire = MKPointAnnotation()
        empire.title = "Empire State Building"
        empire.coordinate = CLLocationCoordinate2D( latitude: 40.7484, longitude: -73.9857)
    theMap.addAnnotation(empire)
    }
    
    
    func centerOn(place:CLLocationCoordinate2D){
        let theRegion = MKCoordinateRegion(center: place, latitudinalMeters: 1000, longitudinalMeters: 1000)
        theMap.setRegion(theRegion, animated: true)
    }
    
}
