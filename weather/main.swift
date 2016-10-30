//
//  main.swift
//  weather
//
//  Created by Terry Johnson on 10/30/16.
//  Copyright © 2016 Terry Johnson. All rights reserved.
//

import Foundation


let weather = Weather()
var location = ""

if CommandLine.arguments.count <= 1 {
    print("You need to provide a location!")
    print("Usage: weather city, state(country)")
    weather.finished = true
} else {
    for index in 0..<CommandLine.arguments.count {
        if index != 0 {
            location += CommandLine.arguments[index] + " "
        }
    }
}

while !weather.finished {
    if !weather.apiLaunched {
        weather.getTemp(location: location)
        weather.apiLaunched = true
    }
}
