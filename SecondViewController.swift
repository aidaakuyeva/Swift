//
//  SecondViewController.swift
//  mapProject2
//
//  Created by Aida on 8/20/19.
//  Copyright © 2019 Upperline School of Code. All rights reserved.
//

import UIKit
import MapKit

class SecondViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var map: MKMapView!
    
    @IBOutlet weak var locationPicker: UIPickerView!
    
    @IBOutlet var adressLabel: UILabel!
    
    let LMHQ = CLLocationCoordinate2DMake(40.709480, -74.010234)

    let empire = CLLocationCoordinate2DMake(40.7484,-73.9857)
    
    let disneyWorld = CLLocationCoordinate2DMake(28.417839,-81.581235)
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String {
        if row == 0{
            return "lmhq"
        }else if row == 1{
            return "Empire State Building"
        }else if row == 2{
            return "Disney World"
        }else if row == 3{
            return "magenta"
        }else {
            return "color"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if row == 0 {
            centerOn(place: LMHQ)
            let LMHQ = MKPointAnnotation()
            LMHQ.title = "LMHQ"
            LMHQ.coordinate = CLLocationCoordinate2D( latitude: 40.709480, longitude: -74.010234)
    map.addAnnotation(LMHQ)
    adressLabel.text = "150 Broadway 20th floor, New York, NY 10038"
    adressLabel.alpha = 1
        }else if row == 1{
            centerOn(place: empire)
            let empire = MKPointAnnotation()
            empire.title = "Empire State Building"
            empire.coordinate = CLLocationCoordinate2D( latitude: 40.7484, longitude: -73.9857)
            map.addAnnotation(empire)
            adressLabel.text = "20 W 34th St, New York, NY 10001"
            adressLabel.alpha = 1
        }else if row == 2{
            centerOn(place: disneyWorld)
            let disneyWorld = MKPointAnnotation()
            disneyWorld.title = "Disney World"
            disneyWorld.coordinate = CLLocationCoordinate2D(latitude: 28.417839, longitude: -81.581235)
            map.addAnnotation(disneyWorld)
            adressLabel.text = "Walt Disney World Resort, Orlando, FL 32830"
            adressLabel.alpha = 1
        }
        
        

    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        locationPicker.dataSource = self
        locationPicker.delegate = self
    }
    
    func centerOn(place:CLLocationCoordinate2D){
        let theRegion = MKCoordinateRegion(center: place, latitudinalMeters: 1000, longitudinalMeters: 1000)
        map.setRegion(theRegion, animated: true)
 
    }
  

}
