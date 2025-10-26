//
//  OnboardingViewModel.swift
//  DriveApp
//
//  Created by Диана Горовая on 26.10.2025.
//
import SwiftUI

class OnboardingViewModel: ObservableObject {
    let model: OnboardingModel
    @Published var page = 0
    @AppStorage(AppStorageKeys.hasSeenOnboarding) private var hasSeenOnboarding = false
    
    init() {
        model = OnboardingModel(screens: OnboardingScreenType.allCases)
    }
    
    func didTapContinue() {
        if page == model.screens.count - 1 {
            hasSeenOnboarding = true
        } else {
            page += 1
        }
    }
    
}
