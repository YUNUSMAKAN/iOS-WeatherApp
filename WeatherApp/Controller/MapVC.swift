//
//  ViewController.swift
//  WeatherApp
//
//  Created by MAKAN on 11.07.2020.
//  Copyright © 2020 YUNUS MAKAN. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
import CoreData


class MapVC: UIViewController,MKMapViewDelegate,CLLocationManagerDelegate {


    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager = CLLocationManager()
    //var currentWeather : CurrentWeather!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mapView.delegate = self
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
       /* currentWeather = CurrentWeather()
        currentWeather.downloadCurrentWeather {
            print("Data Downloaded")
        }*/
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addClicked))
        
        
        let recognizer = UILongPressGestureRecognizer(target: self, action: #selector(chooseLocation(gestureRecognizer:)))
        recognizer.minimumPressDuration = 1
        mapView.addGestureRecognizer(recognizer)
        
    }
    
    @objc func addClicked(){
        
    }
    
    @objc func chooseLocation(gestureRecognizer: UIGestureRecognizer ) {
        
        if gestureRecognizer.state == .began {
            
            let touchedPoint = gestureRecognizer.location(in: self.mapView)
            let coordinates = self.mapView.convert(touchedPoint, toCoordinateFrom: self.mapView)
        
            //Pin
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = coordinates
            annotation.title = "Istanbul"
            //annotation.subtitle = "\(Int(CurrentWeather.sharedInstance.temperature))"
            
           // annotation.title = CurrentWeather.sharedInstance.cityName
            //annotation.subtitle = CurrentWeather.sharedInstance.temperature
        
            self.mapView.addAnnotation(annotation)
            
            //CurrentWeather.sharedInstance.placeLatitude = String(coordinates.latitude)
            //CurrentWeather.sharedInstance.placeLongitude = String(coordinates.longitude)
            
            
        }
        
        
    }


   /* func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation {
            return nil
            
        }
        let resueId = "pin"
        var pinView = mapView.dequeueReusableAnnotationView(withIdentifier: resueId)
        
        if pinView == nil{
            pinView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: resueId)
            pinView?.canShowCallout = true
            let button = UIButton(type: .detailDisclosure)
            pinView?.rightCalloutAccessoryView = button
        }else {
            pinView?.annotation = annotation
            
        }
        return pinView
        
    }*/

    
    
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location = CLLocationCoordinate2D(latitude: locations[0].coordinate.latitude, longitude: locations[0].coordinate.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)

    }
    
    
}

