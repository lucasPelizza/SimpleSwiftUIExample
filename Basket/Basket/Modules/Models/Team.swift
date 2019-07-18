//
//  Team.swift
//  Basket
//
//  Created by Lucas Pelizza on 17/07/2019.
//  Copyright © 2019 Lucas Pelizza. All rights reserved.
//

import Foundation

struct Team: Codable {
    let identifier: Int
    let name: String
    let logo: String?
    let players: [Player]
}
