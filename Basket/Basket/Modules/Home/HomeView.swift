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
                Image(systemName: "photo")
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(self.leagues.identified(by: \.identifier)) { value in
                    Text(value.name)
                        .font(.headline)
                        .padding(.leading, 15)
                        .padding(.top, 5)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationBarTitle(Text("Leagues"))
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
