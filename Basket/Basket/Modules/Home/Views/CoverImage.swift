//
//  CoverImage.swift
//  Basket
//
//  Created by Lucas Pelizza on 18/07/2019.
//  Copyright © 2019 Lucas Pelizza. All rights reserved.
//

import SwiftUI

struct CoverImage : View {
    var imageName: String
    
    var body: some View {
        ImageStore.shared.image(name: imageName, size: 250)
            .resizable()
    }
}

#if DEBUG
struct CoverImage_Previews : PreviewProvider {
    static var previews: some View {
        CoverImage(imageName: "cover_app")
    }
}
#endif

