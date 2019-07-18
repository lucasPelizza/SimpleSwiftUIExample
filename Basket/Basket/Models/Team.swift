//
//  Team.swift
//  Basket
//
//  Created by Lucas Pelizza on 17/07/2019.
//  Copyright © 2019 Lucas Pelizza. All rights reserved.
//

import Foundation
import CoreLocation

struct Team: Codable {
    let identifier: Int
    let name: String
    let logo: String?
    var latitude: Double
    var longitude: Double
    let players: [Player]
    
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: latitude,
            longitude: longitude)
    }
}
