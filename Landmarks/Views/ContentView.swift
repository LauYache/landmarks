//
//  ContentView.swift
//  Landmarks
//
//  Created by Laura Belen Yachelini on 14/04/2024.
//

import SwiftUI

struct ContentView: View {
  @State private var selection: Tab = .featured
  
  enum Tab {
    
    case featured
    case list
  }
  var body: some View {
    TabView(selection: $selection) {
               CategoryHome()
                   .tabItem {
                       Label("Featured", systemImage: "star")
                   }
                   .tag(Tab.featured)


               LandmarkList()
                   .tabItem {
                       Label("List", systemImage: "list.bullet")
                   }
                   .tag(Tab.list)
           }

    
  }
}

#Preview {
  ContentView()
  
  ///Agrego el objeto model al entorno, lo que hace que el objeto esté disponible para cualquier subvista.
  ///Una vista previa falla si cualquier subvista requiere un objeto de modelo en el entorno, pero la vista que está previsualizando no tiene el modificadorenvironmentenvironment(_:)
    .environment(ModelData())
}
