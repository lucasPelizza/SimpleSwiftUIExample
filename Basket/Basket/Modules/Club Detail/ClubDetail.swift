//
//  ClubDetail.swift
//  Basket
//
//  Created by Lucas Pelizza on 18/07/2019.
//  Copyright © 2019 Lucas Pelizza. All rights reserved.
//

import SwiftUI

struct ClubDetail : View {
    var team: Team
    @State var isShowingPlayer = false
    
    var body: some View {
        VStack {
            MapView(coordinate: team.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage(imageName: team.logo ?? "team_placeholder")
                .aspectRatio(contentMode: .fit)
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)
                .padding([.leading, .trailing], 80)
                .layoutPriority(1)
            
            VStack(alignment: .leading) {
                Text(verbatim: team.name)
                    .font(.title)
            }
            .padding()
            
            
            Button(action: { self.isShowingPlayer.toggle() }) {
                if self.isShowingPlayer {
                    Text("Hide players list")
                } else {
                    Text("Show players list")
                }
            }.padding(.top, -20)
            
            if self.isShowingPlayer {
                List {
                    ForEach(team.players.identified(by: \.name)) { player in
                        PlayerRow(player: player).frame(height: 140 )
                    }
                }.layoutPriority(0.9)
                .listRowInsets(EdgeInsets())                
            } else {
                Spacer()
            }
        }
    }
}


#if DEBUG
struct ClubDetail_Previews : PreviewProvider {
    static var previews: some View {
        ClubDetail(team: leaguesData[0].teams[3])
    }
}
#endif


