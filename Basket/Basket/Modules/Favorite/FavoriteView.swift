//
//  FavoriteView.swift
//  Basket
//
//  Created by Lucas Pelizza on 19/07/2019.
//  Copyright © 2019 Lucas Pelizza. All rights reserved.
//

import SwiftUI

struct FavoriteView : View {
    var body: some View {
        NavigationView {
            Form {
                Section(header: SectionHeader(title: "Teams")) {
                    ForEach((0...5).identified(by: \.self)) { number in
                        Text("Team \(number)")
                    }
                }
                
                Section(header: SectionHeader(title: "Players")) {
                    ForEach((0...3).identified(by: \.self)) { number in
                        Text("Player \(number)")
                    }
                }
                
            }.navigationBarTitle("Favorite")
        }
    }
}

#if DEBUG
struct FavoriteView_Previews : PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
#endif
