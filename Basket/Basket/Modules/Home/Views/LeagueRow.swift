//
//  LeagueRow.swift
//  Basket
//
//  Created by Lucas Pelizza on 18/07/2019.
//  Copyright © 2019 Lucas Pelizza. All rights reserved.
//

import SwiftUI

struct LeagueRow : View {
    var league: League

    var body: some View {
        VStack(alignment: .leading) {
            
            Text("\(self.league.name) - \(self.league.country)")
                .font(.headline)
                .padding(.leading, 12)
                .padding(.top, 10)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.league.teams.identified(by: \.identifier)) { team in
                        NavigationLink( destination: EmptyView() ) {
                            TeamItem(team: team)
                        }
                    }
                }
            }
            .frame(height: 200)
        }
    }
}

#if DEBUG
struct LeagueRow_Previews : PreviewProvider {
    static var previews: some View {
        LeagueRow(league: leaguesData[0])
    }
}
#endif
