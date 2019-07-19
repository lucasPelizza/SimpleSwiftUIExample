//
//  HomeView.swift
//  Basket
//
//  Created by Lucas Pelizza on 17/07/2019.
//  Copyright © 2019 Lucas Pelizza. All rights reserved.
//

import SwiftUI

struct HomeView : View {
    
    @ObjectBinding var presenter = HomePresenter()
    
    var body: some View {
        NavigationView {
            List {
                CoverImage(imageName: "cover_app")
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(self.presenter.leagues.identified(by: \.identifier)) { league in
                    LeagueRow(league: league)
                }
                .listRowInsets(EdgeInsets())
            }.navigationBarTitle(Text("Leagues"))
        }.onAppear(perform: loadData)
    }
    
    private func loadData() {
        self.presenter.fetchLeagues()
    }
}

#if DEBUG
struct HomeView_Previews : PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif



