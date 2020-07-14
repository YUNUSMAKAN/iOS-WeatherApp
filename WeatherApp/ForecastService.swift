//
//  ForecastService.swift
//  WeatherApp
//
//  Created by MAKAN on 12.07.2020.
//  Copyright © 2020 YUNUS MAKAN. All rights reserved.
//

import Foundation
import Alamofire

class ForecastService
{
    
    
   // Sample url: https://api.openweathermap.org/data/2.5/weather?q=Istanbul&appid=035582c96958ff1ac78741f31d1088c2
    
    let forecastAPIKey : String
    let forecastBaseURL : URL?
    
    init(APIKey : String) {
        
    self.forecastAPIKey = APIKey
    forecastBaseURL = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=Istanbul&appid=035582c96958ff1ac78741f31d1088c2")
    }
        
    
}
