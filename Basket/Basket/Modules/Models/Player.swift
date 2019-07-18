//
//  Player.swift
//  Basket
//
//  Created by Lucas Pelizza on 17/07/2019.
//  Copyright © 2019 Lucas Pelizza. All rights reserved.
//

import Foundation

struct Player: Codable {
    let name: String
    let weight: Int
    let height: Int
    let country: String
    let position: String
    let picture: String?
}
