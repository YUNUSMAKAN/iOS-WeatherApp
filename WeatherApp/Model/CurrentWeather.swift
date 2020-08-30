//
//  CurrentWeather.swift
//  WeatherApp
//
//  Created by MAKAN on 12.07.2020.
//  Copyright © 2020 YUNUS MAKAN. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class CurrentWeather {
    
    
    static let sharedInstance = CurrentWeather()
    
      var _cityName: String!
      var _temperature: Double!
      var _maxTemperature: Double!
      var _minTemperature: Double!
      var _humidity: Int!
      var _pressure: Int!
      var _windSpeed: Double!
      var _windAngle: Double!
      var _weatherForecast: String!
      var _weatherDescription: String!
    
      var placeLatitude = ""
      var placeLongitude = ""
    
    
    
    
    var cityName : String {
        if _cityName == nil {
            _cityName = ""
        }
        return _cityName

    }
    
    var temperature : Double {
        if _temperature == nil {
            _temperature = 0.0
        }
        return _temperature
    }
    
    var maxTemperature : Double {
        if _maxTemperature == nil {
            _maxTemperature = 0.0
        }
        return _maxTemperature
    }
    
    var minTemperature : Double {
        if _minTemperature == nil {
            _minTemperature = 0.0
        }
        return _minTemperature
    }
    
    var humidity : Int {
        if _humidity == nil {
            _humidity = 0
        }
        return _humidity
    }

    var pressure : Int {
        if _pressure == nil{
            _pressure = 0
        }
        return _pressure
    }
    
    
    var windSpeed : Double {
        if _windSpeed == nil {
            _windSpeed = 0
        }
        return _windSpeed
    }
    
    var windAngle : Double {
        if _windAngle == nil {
            _windAngle = 0
        }
        return _windAngle
    }
    
    var weatherForecast : String {
        if _weatherForecast == nil {
            _weatherForecast = ""
        }
        return _weatherForecast
    }
    
    
    var weatherDescription : String {
        if _weatherDescription == nil{
        _weatherDescription = ""
        }
        return _weatherDescription
    }
    
     init() {
        
    }
    
    
    func downloadCurrentWeather(completed: @escaping DownloadComplete){
        
    
        Alamofire.request(API1).responseJSON { (response) in
            let result = response.result
            let json = JSON(result.value!)
            self._cityName = json["name"].stringValue
            self._weatherForecast = json["weather"][0]["main"].stringValue
            self._weatherDescription = json["weather"][0]["description"].stringValue
            let downloadedTemp = json["main"]["temp"].double
            let downloadedMaxTemp = json["main"]["temp_max"].double
            let downloadedMinTemp = json["main"]["temp_min"].double
            let downloadedHum = json["main"]["humidity"].int
            let downloadedPre = json["main"]["pressure"].int
            let downloadedWindSpeed = json["wind"]["speed"].double
            let downloadedWindDeg = json["wind"]["deg"].double
        
        
            self._windSpeed = downloadedWindSpeed!
            self._windAngle = downloadedWindDeg!
            self._humidity = downloadedHum!
            self._pressure = downloadedPre!
            self._temperature = (downloadedTemp! - 273.15).rounded(toPlaces: 0)
            self._maxTemperature = (downloadedMaxTemp! - 273.15).rounded(toPlaces: 0)
            self._minTemperature = (downloadedMinTemp! - 273.15).rounded(toPlaces: 0)
            completed()
            
        }
        
      /*  Alamofire.request(API2).responseJSON { (response) in
            let result = response.result
                let json = JSON(result.value!)
                self._cityName = json["name"].stringValue
                self._weatherForecast = json["weather"][0]["main"].stringValue
                self._weatherDescription = json["weather"][0]["description"].stringValue
                let downloadedTemp = json["main"]["temp"].double
                let downloadedMaxTemp = json["main"]["temp_max"].double
                let downloadedMinTemp = json["main"]["temp_min"].double
                let downloadedHum = json["main"]["humidity"].int
                let downloadedPre = json["main"]["pressure"].int
                let downloadedWindSpeed = json["wind"]["speed"].double
                let downloadedWindDeg = json["wind"]["deg"].double
         
         
                self._windSpeed = downloadedWindSpeed!
                self._windAngle = downloadedWindDeg!
                self._humidity = downloadedHum!
                self._pressure = downloadedPre!
                self._temperature = (downloadedTemp! - 273.15).rounded(toPlaces: 0)
                self._maxTemperature = (downloadedMaxTemp! - 273.15).rounded(toPlaces: 0)
                self._minTemperature = (downloadedMinTemp! - 273.15).rounded(toPlaces: 0)
                   completed()
                       
        }
        Alamofire.request(API3).responseJSON { (response) in
            let result = response.result
            
                let json = JSON(result.value!)
                self._cityName = json["name"].stringValue
                self._weatherForecast = json["weather"][0]["main"].stringValue
                self._weatherDescription = json["weather"][0]["description"].stringValue
                let downloadedTemp = json["main"]["temp"].double
                let downloadedMaxTemp = json["main"]["temp_max"].double
                let downloadedMinTemp = json["main"]["temp_min"].double
                let downloadedHum = json["main"]["humidity"].int
                let downloadedPre = json["main"]["pressure"].int
                let downloadedWindSpeed = json["wind"]["speed"].double
                let downloadedWindDeg = json["wind"]["deg"].double
            
            
                self._windSpeed = downloadedWindSpeed!
                self._windAngle = downloadedWindDeg!
                self._humidity = downloadedHum!
                self._pressure = downloadedPre!
                self._temperature = (downloadedTemp! - 273.15).rounded(toPlaces: 0)
                self._maxTemperature = (downloadedMaxTemp! - 273.15).rounded(toPlaces: 0)
                self._minTemperature = (downloadedMinTemp! - 273.15).rounded(toPlaces: 0)
                completed()
        }
        
        
        Alamofire.request(API4).responseJSON { (response) in
            let result = response.result
                
            let json = JSON(result.value!)
                self._cityName = json["name"].stringValue
                self._weatherForecast = json["weather"][0]["main"].stringValue
                self._weatherDescription = json["weather"][0]["description"].stringValue
                let downloadedTemp = json["main"]["temp"].double
                let downloadedMaxTemp = json["main"]["temp_max"].double
                let downloadedMinTemp = json["main"]["temp_min"].double
                let downloadedHum = json["main"]["humidity"].int
                let downloadedPre = json["main"]["pressure"].int
                let downloadedWindSpeed = json["wind"]["speed"].double
                let downloadedWindDeg = json["wind"]["deg"].double
            
            
                self._windSpeed = downloadedWindSpeed!
                self._windAngle = downloadedWindDeg!
                self._humidity = downloadedHum!
                self._pressure = downloadedPre!
                self._temperature = (downloadedTemp! - 273.15).rounded(toPlaces: 0)
                self._maxTemperature = (downloadedMaxTemp! - 273.15).rounded(toPlaces: 0)
                self._minTemperature = (downloadedMinTemp! - 273.15).rounded(toPlaces: 0)
                completed()
        }
        
        
        
        Alamofire.request(API5).responseJSON { (response) in
            let result = response.result
                
                let json = JSON(result.value!)
                self._cityName = json["name"].stringValue
                self._weatherForecast = json["weather"][0]["main"].stringValue
                self._weatherDescription = json["weather"][0]["description"].stringValue
                let downloadedTemp = json["main"]["temp"].double
                let downloadedMaxTemp = json["main"]["temp_max"].double
                let downloadedMinTemp = json["main"]["temp_min"].double
                let downloadedHum = json["main"]["humidity"].int
                let downloadedPre = json["main"]["pressure"].int
                let downloadedWindSpeed = json["wind"]["speed"].double
                let downloadedWindDeg = json["wind"]["deg"].double
            
            
                self._windSpeed = downloadedWindSpeed!
                self._windAngle = downloadedWindDeg!
                self._humidity = downloadedHum!
                self._pressure = downloadedPre!
                self._temperature = (downloadedTemp! - 273.15).rounded(toPlaces: 0)
                self._maxTemperature = (downloadedMaxTemp! - 273.15).rounded(toPlaces: 0)
                self._minTemperature = (downloadedMinTemp! - 273.15).rounded(toPlaces: 0)
                completed()
        }*/
       
    }
    
}

