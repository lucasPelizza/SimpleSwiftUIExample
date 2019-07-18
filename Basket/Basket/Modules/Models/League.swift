//
//  League.swift
//  Basket
//
//  Created by Lucas Pelizza on 17/07/2019.
//  Copyright © 2019 Lucas Pelizza. All rights reserved.
//

import Foundation

struct League: Codable{
    let identifier: Int
    let name: String
    let country: String
    let teams: [Team]
}
