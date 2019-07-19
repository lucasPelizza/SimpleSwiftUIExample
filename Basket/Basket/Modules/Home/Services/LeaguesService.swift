//
//  LeaguesService.swift
//  Basket
//
//  Created by Lucas Pelizza on 19/07/2019.
//  Copyright © 2019 Lucas Pelizza. All rights reserved.
//

import Foundation

class LeaguesService {
    // the idea of this project is just show SwiftUI and not the architecture or good practices in the connection with the BE
    func fetchLeagues(result: (Result<[League], Error>) -> ()) {
        let leagues: [League] = load("leagues.json")
        result(.success(leagues))
    }
}
