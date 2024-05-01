//
//  SwiftUIView.swift
//  Landmarks
//
//  Created by Laura Belen Yachelini on 14/04/2024.
//

import SwiftUI
import MapKit

struct MapView: View {
  var coordinate: CLLocationCoordinate2D
  var body: some View {
    Map(position: .constant(.region(region)))
  }
  
  //Variable computada privada que contiene la información de la región para el mapa.
  private var region: MKCoordinateRegion {
    MKCoordinateRegion(
      center: CLLocationCoordinate2D(latitude: -34.616604809312854, longitude: -58.46396987270882),
      span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    // -34.616604809312854, -58.46396987270882
  }
}

#Preview {
  
  MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
