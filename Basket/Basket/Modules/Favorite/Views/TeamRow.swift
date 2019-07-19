//
//  TeamRow.swift
//  Basket
//
//  Created by Lucas Pelizza on 19/07/2019.
//  Copyright © 2019 Lucas Pelizza. All rights reserved.
//

import SwiftUI

struct TeamRow : View {
    var team: Team
    var body: some View {
        HStack {
            CircleImage(imageName: team.logo ?? "team_placeholder")
                .frame(width: 50, height: 50)
                .aspectRatio(contentMode: .fit)
                .padding(14)
            
            VStack(alignment: .leading) {
                Text("\(team.name) - \(team.country)")
                    .font(.title)
                    .fixedSize()
            }
            .padding(.trailing, 8)
        }
    }
}
#if DEBUG
struct TeamRow_Previews : PreviewProvider {
    static var previews: some View {
        TeamRow(team: teamData)
    }
}
#endif

