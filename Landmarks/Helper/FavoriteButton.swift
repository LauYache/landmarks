//
//  Favorite.swift
//  Landmarks
//
//  Created by Laura Belen Yachelini on 10/04/2024.
//

import SwiftUI

struct FavoriteButton: View {
  @Binding var isSet : Bool
  var body: some View {
    Button{
      
      isSet.toggle()
      
    } label: {
      Label("Button", systemImage: isSet ? "star.fill" : "star")
        .labelStyle(.iconOnly)
        .foregroundStyle(isSet ? .yellow : .gray)
      
    }
    
    
  }
}

#Preview {
  FavoriteButton(isSet: .constant(true))
}
