//
//  ClubDetail.swift
//  Basket
//
//  Created by Lucas Pelizza on 18/07/2019.
//  Copyright © 2019 Lucas Pelizza. All rights reserved.
//

import SwiftUI

struct ClubDetail : View {
    
    @EnvironmentObject var userData: UserData
    @State var isShowingPlayer = false
    var team: Team
    
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
            
            HStack(alignment: .center) {
                Text(verbatim: team.name)
                    .font(.title)
                
                Button(action: onFavorite) {
                    Image(systemName: self.isFavorite ? "star.fill" : "star")
                        .foregroundColor(Color.yellow)
                }
            }
            
            
            Button(action: { self.isShowingPlayer.toggle() }) {
                Text(isShowingPlayer ? "Hide players list" : "Show players list")
            }.padding(.top, -20)
            
            if isShowingPlayer {
                List {
                    ForEach(team.players.identified(by: \.name)) { player in
                        PlayerRow(player: player).frame(height: 140 )
                    }.listRowInsets(EdgeInsets())
                }.layoutPriority(0.9)
            } else {
                Spacer()
            }
        }
    }
    
    private var isFavorite: Bool {
        userData.favoriteTeams.contains(where: {$0.identifier == team.identifier})
    }
    
    private func onFavorite() {
        if isFavorite {
            userData.favoriteTeams.removeAll(where: {$0.identifier == team.identifier})
        } else {
            userData.favoriteTeams.append(team)
        }
    }
}


#if DEBUG
struct ClubDetail_Previews : PreviewProvider {
    static var previews: some View {
        ClubDetail(team: leaguesData[0].teams[3])
            .environmentObject(userData)
    }
}
#endif




