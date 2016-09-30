//
//  Racecar.swift
//  swift-vehicle-lab
//
//  Created by Jhantelle Belleza on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car {
    let driver: String
    var sponsors: [String]
    
    
    init(name: String, weight: Double, maxSpeed: Double,
         transmission: String, cylinders: Int,
         milesPerGallon: Double, driver: String, sponsors: [String]) {
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed,
                   transmission: transmission, cylinders: cylinders,
                   milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
        if speed < maxSpeed { speed += (maxSpeed * 0.2) }
    }
    
    override func decelerate() {
        if speed > 0 { speed -= (maxSpeed * 0.2) }
    }
    
    func driftRight(){
        if speed > 0{
           heading += 90
           speed -= (speed * 0.25)
        }
    }
    
    func driftLeft() {
        if speed > 0 {
           speed -= (speed * 0.25)
           
            if super.heading <= 0 {
               super.heading += 360
            }
            
           heading -= 90
        }
        
//        if super.heading >= 360 ||
//           super.heading < 0 {
//           super.heading = abs(super.heading - 720)
//        }
    }
           
}
