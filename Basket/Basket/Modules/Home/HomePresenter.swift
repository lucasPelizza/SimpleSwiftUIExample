//
//  HomePresenter.swift
//  Basket
//
//  Created by Lucas Pelizza on 19/07/2019.
//  Copyright © 2019 Lucas Pelizza. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class HomePresenter: BindableObject {

    let didChange = PassthroughSubject<HomePresenter, Never>()
    let leaguesService = LeaguesService()
    
    var leagues = [League]() {
        didSet {
                didChange.send(self)
        }
    }
    
    func fetchLeagues() {
        self.leaguesService.fetchLeagues() { [weak self] leaguesResult in
            guard let self = self else { return }
            switch leaguesResult {
            case .success(let leagues):
                DispatchQueue.main.async {
                    self.leagues = leagues
                }
            case .failure:
                // the idea of this project is just show SwiftUI. I must handle the error to show something to the user
                fatalError("the leagues service has failed")
            }
        }
    }
}
