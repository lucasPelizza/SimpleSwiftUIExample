//
//  HomeView.swift
//  Basket
//
//  Created by Lucas Pelizza on 17/07/2019.
//  Copyright © 2019 Lucas Pelizza. All rights reserved.
//

import SwiftUI

struct HomeView : View {
    var leagues: [League]
    
    var body: some View {
        NavigationView {
            List {
                CoverImage(imageName: "cover_app")
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(self.leagues.identified(by: \.identifier)) { league in
                    LeagueRow(league: league)
                }
                .listRowInsets(EdgeInsets())
            }.navigationBarTitle(Text("Leagues"))
        }
        
    }
}

#if DEBUG
struct HomeView_Previews : PreviewProvider {
    static var previews: some View {
        HomeView(leagues: leaguesData)
    }
}
#endif



