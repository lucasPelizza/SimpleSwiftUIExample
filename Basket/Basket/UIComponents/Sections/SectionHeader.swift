//
//  SectionHeader.swift
//  Basket
//
//  Created by Lucas Pelizza on 19/07/2019.
//  Copyright © 2019 Lucas Pelizza. All rights reserved.
//

import SwiftUI

struct SectionHeader : View {
    var title: String
    
    var body: some View {
        VStack {
            Text(title)
                .padding([.top, .bottom], 10)
        }
    }
}


#if DEBUG
struct SectionHeader_Previews : PreviewProvider {
    static var previews: some View {
        SectionHeader(title: "Title")
    }
}
#endif
