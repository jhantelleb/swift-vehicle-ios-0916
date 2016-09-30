//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Jhantelle Belleza on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    
    override func climb() {
        if altitude < maxAltitude &&
           inFlight == true {
           altitude += (maxAltitude * 0.20)
           super.decelerate()}
    }
    
    override func dive() {
        if altitude > 0 &&
           inFlight == true {
        altitude -= (maxAltitude * 0.20)
        super.accelerate()
        }
    }
    
    func afterburner() {
        if altitude > 0 &&
           inFlight == true &&
           speed == maxSpeed {
           speed = maxSpeed * 2
        }
    }
}
