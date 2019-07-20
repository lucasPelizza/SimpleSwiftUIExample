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
                HomeView()
                    .tabItem {
                        Image(systemName: "square.grid.2x2")
                        Text("Home")
                    }.tag(0)
                
                FavoriteView()
                    .tabItem {
                        Image(systemName: "star")
                        Text("Favorite")
                }.tag(1)
            }.onAppear(perform: loadFavorite)
    }
    
    private func loadFavorite() {
        //I added mock data because there is a bug in Xcode 11 beta:
        //
        // *APPLE:*  if you nest a ScrollView inside a List and that ScrollView contains a NavigationLink,
        // the links won’t navigate to the destination when tapped by the user.
        userData.favoritePlayers.append(leaguesData[0].teams[0].players[0])
        userData.favoriteTeams.append(leaguesData[0].teams[0])
        userData.favoritePlayers.append(leaguesData[0].teams[1].players[0])
        userData.favoriteTeams.append(leaguesData[0].teams[1])
        userData.favoritePlayers.append(leaguesData[0].teams[2].players[0])
        userData.favoriteTeams.append(leaguesData[0].teams[2])
        userData.favoritePlayers.append(leaguesData[0].teams[3].players[0])
        userData.favoriteTeams.append(leaguesData[0].teams[3])
    }
}

#if DEBUG
struct TabbedNavigator_Previews : PreviewProvider {
    static var previews: some View {
        TabbedNavigator()
    }
}
#endif
