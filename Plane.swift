//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Jhantelle Belleza on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle {
    let maxAltitude: Double
    var altitude: Double = 0
    var inFlight: Bool {
        return (speed > 0 && altitude > 0)
    }
    
    init(name: String, weight: Double, maxSpeed: Double,
         maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }

    func takeoff() {
        if speed == 0 {
           speed = maxSpeed * 0.10
           altitude = maxAltitude * 0.10
        }
    }
    
    func land(){
        speed = 0
        altitude = 0
    }
    
    func climb(){
        if altitude < maxAltitude &&
           inFlight == true {
        altitude += maxAltitude * 0.10
        decelerate() }
    }
    
    func dive() {
        if (altitude > 0 &&
            inFlight == true) ||
            (altitude > 0 &&
            speed == 0){
            altitude -= (maxAltitude * 0.10)
            accelerate() }
    }
    
    func bankRight() {
        if inFlight == true {
            super.heading += 45
            speed -= (speed * 0.1)}
    }
    
    func bankLeft(){
        
        if inFlight == true {
          speed -= (speed * 0.10)
            if super.heading <= 0 {
                super.heading = abs(super.heading + 360)
            }
            
            if super.heading <= 360 &&
              super.heading >= 0
            { super.heading -= 45 }
            

        }
            
        
//        if super.heading == 360 {
//            super.heading = abs(super.heading - 360) }
//        else
        
    }
    

}
