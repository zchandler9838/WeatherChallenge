//
//  Weather.swift
//  WeatherAppMCS
//
//  Created by MCS on 11/8/17.
//  Copyright © 2017 Zach Chandler. All rights reserved.
//

import Foundation
struct Weather {
    var json: String
    var humidity = 87;
    var pressure = 1018;
    var temp = "285.59";
    var temp_max = "288.15";
    var temp_min = "283.15";
    var city: City
}
