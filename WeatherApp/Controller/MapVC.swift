//
//  ViewController.swift
//  WeatherApp
//
//  Created by MAKAN on 11.07.2020.
//  Copyright © 2020 YUNUS MAKAN. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController,MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mapView.delegate = self
    }

   
    
}

