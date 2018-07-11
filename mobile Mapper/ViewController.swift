//
//  ViewController.swift
//  mobile Mapper
//
//  Created by Sanya Jain on 11/07/18.
//  Copyright © 2018 Sanya Jain. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    let northwesternAnnotation = MKPointAnnotation()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       let latitude = 42.055984
        let longitude = -87.675171
        let coordinate = CLLocationCoordinate2DMake(latitude, longitude)
        northwesternAnnotation.coordinate = coordinate
        northwesternAnnotation.title = "Northwestern University"
        mapView.addAnnotation(northwesternAnnotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

