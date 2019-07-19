//
//  TabbedNavigator.swift
//  Basket
//
//  Created by Lucas Pelizza on 19/07/2019.
//  Copyright © 2019 Lucas Pelizza. All rights reserved.
//

import SwiftUI

struct TabbedNavigator : View {
    var body: some View {

            TabbedView {
                HomeView(leagues: leaguesData)
                    .tabItem {
                        Image(systemName: "square.grid.2x2")
                        Text("Home")
                    }.tag(0)
                
                FavoriteView()
                    .tabItem {
                        Image(systemName: "star")
                        Text("Favorite")
                }.tag(1)
            }
    }
}

#if DEBUG
struct TabbedNavigator_Previews : PreviewProvider {
    static var previews: some View {
        TabbedNavigator()
    }
}
#endif
