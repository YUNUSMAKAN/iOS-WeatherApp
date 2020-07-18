//
//  Extensions.swift
//  WeatherApp
//
//  Created by MAKAN on 12.07.2020.
//  Copyright © 2020 YUNUS MAKAN. All rights reserved.
//

import Foundation

extension Double {
    
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}


