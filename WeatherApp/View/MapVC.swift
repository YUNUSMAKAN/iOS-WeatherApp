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
        }*/
        
        
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addClicked))
        
        let annotation1 = MKPointAnnotation()
        annotation1.coordinate = CLLocationCoordinate2D(latitude: 41.01384, longitude: 28.94966)
        annotation1.title = "İSTANBUL"
        annotation1.subtitle = "\(Int(CurrentWeather.sharedInstance.temperature))"
        mapView.addAnnotation(annotation1)
        
        let annotation2 = MKPointAnnotation()
        annotation2.coordinate = CLLocationCoordinate2D(latitude: 39.91987, longitude: 32.85427)
        annotation2.title = "ANKARA"
        annotation1.subtitle = "\(Int(CurrentWeather.sharedInstance.temperature))"
        mapView.addAnnotation(annotation2)
        
        let annotation3 = MKPointAnnotation()
        annotation3.coordinate = CLLocationCoordinate2D(latitude: 38.41273, longitude: 27.13838)
        annotation3.title = "İZMİR"
        annotation1.subtitle = "\(Int(CurrentWeather.sharedInstance.temperature))"
        mapView.addAnnotation(annotation3)
        
        let annotation4 = MKPointAnnotation()
        annotation4.coordinate = CLLocationCoordinate2D(latitude: 37.87135, longitude: 32.48464)
        annotation4.title = "KONYA"
        annotation1.subtitle = "\(Int(CurrentWeather.sharedInstance.temperature))"
        mapView.addAnnotation(annotation4)
        
        let annotation5 = MKPointAnnotation()
        annotation5.coordinate = CLLocationCoordinate2D(latitude: 36.90812, longitude: 30.69556)
        annotation5.title = "ANTALYA"
        annotation1.subtitle = "\(Int(CurrentWeather.sharedInstance.temperature))"
        mapView.addAnnotation(annotation5)
        
        
      
        
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        if annotation is MKUserLocation {
            return nil
        }
        
        let reuseId = "pin"
        var pinView = mapView.dequeueReusableAnnotationView(withIdentifier: reuseId) as? MKPinAnnotationView
        
        if pinView == nil {
            pinView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: reuseId)
            pinView?.canShowCallout = true
            pinView?.tintColor = UIColor.blue
            
            let button = UIButton(type: UIButton.ButtonType.detailDisclosure)
            pinView?.rightCalloutAccessoryView = button
            
        }else {
            pinView?.annotation = annotation
        }
        return pinView
    }
    
    
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        
       performSegue(withIdentifier: "toDetailsVC", sender: nil)
                
    }
    
    
    
    @objc func addClicked(){
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }
    
  
           
    //CurrentWeather.sharedInstance.placeLatitude = String(coordinates.latitude)
    //CurrentWeather.sharedInstance.placeLongitude = String(coordinates.longitude)
            


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

