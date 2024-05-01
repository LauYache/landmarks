//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Laura Belen Yachelini on 10/04/2024.
//

import SwiftUI


@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()


    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
