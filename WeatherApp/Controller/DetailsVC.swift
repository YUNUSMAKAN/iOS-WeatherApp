//
//  DetailsVC.swift
//  WeatherApp
//
//  Created by MAKAN on 11.07.2020.
//  Copyright © 2020 YUNUS MAKAN. All rights reserved.
//

import UIKit
import CoreLocation

class DetailsVC: UIViewController, CLLocationManagerDelegate {

    
    @IBOutlet weak var sunImage: UIImageView!
    @IBOutlet weak var humidityImage: UIImageView!
    @IBOutlet weak var pressureImage: UIImageView!
    @IBOutlet weak var windSpeedImage: UIImageView!
    @IBOutlet weak var windDegImage: UIImageView!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var sun2Image: UIImageView!
    @IBOutlet weak var sun3Image: UIImageView!
    
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var degreeLabel: UILabel!
    @IBOutlet weak var emoji3Label: UILabel!
    @IBOutlet weak var emoji2Label: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var weatherForecastLabel: UILabel!
    @IBOutlet weak var weatherDescriptionLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var windSpeedLabel: UILabel!
    @IBOutlet weak var windDegLabel: UILabel!
    @IBOutlet weak var maxHotLabel: UILabel!
    @IBOutlet weak var minHotLabel: UILabel!
    
    
   
    @IBOutlet weak var humidityValueLabel: UILabel!
    @IBOutlet weak var pressureValueLabel: UILabel!
    @IBOutlet weak var windSpeedValueLabel: UILabel!
    @IBOutlet weak var windDegValueLabel: UILabel!
    @IBOutlet weak var maxValueLabel: UILabel!
    @IBOutlet weak var minValueLabel: UILabel!
    
   // let locationManager = CLLocationManager()
    
    var choosenPainting = ""
   
    var currentWeather : CurrentWeather!
    var currentLocation : CLLocation!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        currentWeather = CurrentWeather()
        //callDelegates()
        //setupLocation()
        //locationAuthCheck()
        currentWeather.downloadCurrentWeather {
                   self.updateUI()
               }
        
        
       
    }
    
  
  /*
     //LOCATION
     
    override func viewDidAppear(_ animated: Bool) {
        locationAuthCheck()
    }
    
    func callDelegates() {
        locationManager.delegate = self
        
    }
    
    func setupLocation() {
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization() // Burayi degistirebiliriz.Daha sonra. Take Permission from the user
        locationManager.startMonitoringSignificantLocationChanges()
    }
    
    func locationAuthCheck() {
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            currentLocation = locationManager.location
            
            
            Location.sharedInstance.latitude =  currentLocation.coordinate.latitude
            Location.sharedInstance.longitude = currentLocation.coordinate.longitude
            //Download the API Data
            currentWeather.downloadCurrentWeather {
                       self.updateUI()
                   }
            
            
        }else { //User did not allow
            locationManager.requestWhenInUseAuthorization() // Take Permission from the user
            locationAuthCheck() // Make a check
        }
    }
    */
    
    
    
    func updateUI(){
        cityNameLabel.text = currentWeather.cityName
        degreeLabel.text = "\(Int(currentWeather.temperature))"
        maxValueLabel.text = "\(Int(currentWeather._maxTemperature))"
        minValueLabel.text = "\(Int(currentWeather._minTemperature))"
        humidityValueLabel.text = "\(currentWeather.humidity)"
        pressureValueLabel.text = "\(currentWeather.pressure)"
        windSpeedValueLabel.text = "\(currentWeather.windSpeed)"
        windDegValueLabel.text = "\(currentWeather.windAngle)"
        
        weatherForecastLabel.text = "Hava Durumu : \(currentWeather.weatherForecast)"
        weatherDescriptionLabel.text = "Açıklama : \(currentWeather.weatherDescription)"
        
    }
    
    
}
