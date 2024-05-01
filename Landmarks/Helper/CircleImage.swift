//
//  CircleImage.swift
//  Landmarks
//
//  Created by Laura Belen Yachelini on 14/04/2024.
//

import SwiftUI

struct CircleImage: View {
  var image: Image

    var body: some View {
      Image("obelisco")
        .resizable()
        .scaledToFit()
        .clipShape(Circle())
        .overlay{
          Circle().stroke(.white, lineWidth: 4)
            .shadow(radius: 7)
        }
    }
}

#Preview {
  CircleImage(image: Image("obelisco"))
}
