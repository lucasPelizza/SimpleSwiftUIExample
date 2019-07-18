//
//  TeamItem.swift
//  Basket
//
//  Created by Lucas Pelizza on 18/07/2019.
//  Copyright © 2019 Lucas Pelizza. All rights reserved.
//

import SwiftUI

struct TeamItem : View {
    var team: Team

    var body: some View {
        VStack(alignment: .center) {
            ImageStore.shared.image(name: team.logo ?? "team_placeholder", size: 155)
                .renderingMode(.original)
                .cornerRadius(5)
                .padding(.top)
                .shadow(radius: 4)
            
            Text(team.name)
                .color(.primary)
                .font(.subheadline)
                .padding(.bottom)
        }
        .padding(.leading, 12)
    }
}

#if DEBUG
struct TeamItem_Previews : PreviewProvider {
    static var previews: some View {
        TeamItem(team: leaguesData[0].teams[0])
    }
}
#endif
