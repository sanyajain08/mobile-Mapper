//
//  ViewController.swift
//  mobile Mapper
//
//  Created by Sanya Jain on 11/07/18.
//  Copyright © 2018 Sanya Jain. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    let northwesternAnnotation = MKPointAnnotation()
    let locationManager = CLLocationManager()
    let address = "Mount Rushmore"
    let geoCoder = CLGeocoder()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       let latitude = 42.055984
        let longitude = -87.675171
        let coordinate = CLLocationCoordinate2DMake(latitude, longitude)
        northwesternAnnotation.coordinate = coordinate
        northwesternAnnotation.title = "Northwestern University"
        mapView.addAnnotation(northwesternAnnotation)
        locationManager.requestWhenInUseAuthorization()
        mapView.showsUserLocation = true
        geoCoder.geocodeAddressString(address) { (placemarks, error) in
            for placemark in placemarks!{
                let annotation = MKPointAnnotation()
                annotation.coordinate = (placemark.location?.coordinate)!
                annotation.title = placemark.name
                self.mapView.addAnnotation(annotation)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

