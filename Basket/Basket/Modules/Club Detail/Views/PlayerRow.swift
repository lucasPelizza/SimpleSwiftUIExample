//
//  PlayerRow.swift
//  Basket
//
//  Created by Lucas Pelizza on 18/07/2019.
//  Copyright © 2019 Lucas Pelizza. All rights reserved.
//

import SwiftUI

struct PlayerRow : View {
    var player: Player
    var body: some View {
        HStack {
            CircleImage(imageName: player.picture ?? "")
                .frame(width: 80, height: 80)
                .aspectRatio(contentMode: .fit)
                .padding(14)
            
            VStack(alignment: .leading) {
                Text("\(player.name) - \(player.country)")
                .font(.title)
                    .fixedSize()
                
                Text("Position: \(player.position)")
                
                HStack(alignment: .center) {
                    Text("Weight: \(player.weight)")
                    Spacer()
                    Text("Height: \(player.height)")
                    Spacer()
                }

                
            }.frame(height: 120)
            .padding(.trailing, 8)
        }
    }
}

#if DEBUG
struct PlayerRow_Previews : PreviewProvider {
    static var previews: some View {
        PlayerRow(player: playerData)
    }
}
#endif
