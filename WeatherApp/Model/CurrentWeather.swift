//
//  CurrentWeather.swift
//  WeatherApp
//
//  Created by MAKAN on 12.07.2020.
//  Copyright © 2020 YUNUS MAKAN. All rights reserved.
//

import Foundation

class CurrentWeather {
    
    let temperature: Int?
    let humidity: Int?
    let pressure: Int?
    let windSpeed: Int?
    let windAngle: Int?
    let weatherForecast: String?
    let weatherDescription: String?
    
    
    struct WeatherKeys {
        static let temperature = "temp"
        static let humidity = "humidity"
        static let pressure = "pressure"
        static let windSpeed = "speed"
        static let windAngle = "deg"
        static let weatherForecast = "main"
        static let weatherDescription = "description"
        
    }
    
   
    init(weatherDictionary: [String : Any]) {
        
        temperature = weatherDictionary[WeatherKeys.temperature] as? Int
        
        if let humidityDouble = weatherDictionary[WeatherKeys.humidity] as? Double {
            humidity = Int(humidityDouble * 100)
        }else {
            humidity = nil
        }
        
        if let pressureDouble = weatherDictionary[WeatherKeys.pressure] as? Double {
            pressure = Int(pressureDouble * 100)
        }else {
             pressure = nil
        }
        
        if let windSpeedDouble = weatherDictionary[WeatherKeys.windSpeed] as? Double {
            windSpeed = Int(windSpeedDouble * 100)
        }else {
            windSpeed = nil
        }
        
        if let windAngleeDouble = weatherDictionary[WeatherKeys.windAngle] as? Double {
            windAngle = Int(windAngleeDouble * 100)
        }else {
            windAngle = nil
        }
        
        weatherForecast = weatherDictionary[WeatherKeys.weatherForecast] as? String
         
        weatherDescription = weatherDictionary[WeatherKeys.weatherDescription] as? String
 
        
    }
    
    /*
        "id":802,
        "main":"Clouds",
        "description":"scattered clouds",
        "icon":"03d"
        "temp":299.53,
        "feels_like":295.55,
        "temp_min":299.15,
        "temp_max":300.15,
        "pressure":1016,
        "humidity":54
        "speed":8.7,
        "deg":40
     */
    
    
    
}

