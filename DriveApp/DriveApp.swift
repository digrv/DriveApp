//
//  DriveAppApp.swift
//  DriveApp
//
//  Created by Диана Горовая on 24.10.2025.
//

import SwiftUI

@main
struct DriveApp: App {
    @State private var isReady = false
    @AppStorage(AppStorageKeys.hasSeenOnboarding) private var hasSeenOnboarding = false
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                if isReady {
                    if hasSeenOnboarding {
                        EmptyView()
                    } else {
                        OnboardingView()
                            .transition(.opacity)
                    }
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
