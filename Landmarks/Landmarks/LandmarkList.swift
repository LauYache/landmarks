//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Laura Belen Yachelini on 14/04/2024.
//

import SwiftUI

struct LandmarkList: View {
  ///Modificador property wrraper environment permite leer el model data desde esta vista
  @Environment(ModelData.self) var modelData
  @State private var showFavoritesOnly = false
  
  var filteredLandmarks: [Landmark]{
    modelData.landmarks.filter { landmark in
      (!showFavoritesOnly || landmark.isFavorite)
    }
  }
  var body: some View {
    NavigationSplitView{
      List{
        Toggle(isOn: $showFavoritesOnly){
          Text("Show favorites only")
        }
        ForEach(filteredLandmarks) { landmark in
          NavigationLink {
            LandmarkDetail(landmark: landmark)
          } label: {
            LandmarkRow(landmark: landmark)
          }
        }
      }
      .navigationTitle("Landmarks")
    }detail: {
      Text("Select a Landmark")
    }
  }
  
}

#Preview {
  LandmarkList()
    .environment(ModelData())
}
