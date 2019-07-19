//
//  UserData.swift
//  Basket
//
//  Created by Lucas Pelizza on 19/07/2019.
//  Copyright © 2019 Lucas Pelizza. All rights reserved.
//

import Combine
import SwiftUI

final class UserData: BindableObject {
    let didChange = PassthroughSubject<UserData, Never>()
    
    var favoriteTeams: [Team] = [] {
        didSet {
            didChange.send(self)
        }
    }
    
    var favoritePlayers: [Player] = [] {
        didSet {
            didChange.send(self)
        }
    }
}
