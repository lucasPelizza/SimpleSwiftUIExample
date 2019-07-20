//
//  FavoriteView.swift
//  Basket
//
//  Created by Lucas Pelizza on 19/07/2019.
//  Copyright © 2019 Lucas Pelizza. All rights reserved.
//

import SwiftUI

struct FavoriteView : View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            Form {
                Section(header:SectionHeader(title: "Teams")) {
                    
                    ForEach(userData.favoriteTeams.identified(by: \.identifier)) { team in
                        TeamRow(team: team)
                    }.onDelete(perform: deteleteTeam)
                    .listRowInsets(EdgeInsets())
                    
                }
                
                Section(header:SectionHeader(title: "Players")) {
                    ForEach(userData.favoritePlayers.identified(by: \.name)) { player in
                        PlayerRow(player: player)
                    }.onDelete(perform: deletePlayer)
                }
            }
            .navigationBarTitle("Favorite")
        }
    }
    
    private func deteleteTeam(at offsets: IndexSet) {
        if let first = offsets.first {
            userData.favoriteTeams.remove(at: first)
        }
    }
    
    private func deletePlayer(at offsets: IndexSet) {
        if let first = offsets.first {
            userData.favoritePlayers.remove(at: first)
        }
    }
}

#if DEBUG
struct FavoriteView_Previews : PreviewProvider {
    static var previews: some View {
        FavoriteView()
            .environmentObject(userData)
    }
}
#endif


