//
//  DriveAppApp.swift
//  DriveApp
//
//  Created by Диана Горовая on 24.10.2025.
//

import SwiftUI

@main
struct DriveAppApp: App {
    @State private var isReady = false
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                if isReady {
                    ContentView()
                        .transition(.opacity)
                } else {
                    SplashView()
                        .transition(.opacity)
                }
            }
            .task {
                try? await Task.sleep(nanoseconds: 1000_000_000)
                withAnimation(.easeInOut(duration: 0.25)) { isReady = true }
            }
        }
    }
}
