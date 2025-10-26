//
//  OnboardingModel.swift
//  DriveApp
//
//  Created by Диана Горовая on 25.10.2025.
//
import SwiftUI
struct OnboardingModel {
    let screens: [OnboardingScreenType]
}

enum OnboardingScreenType: CaseIterable {
    case firstScreen
    case secondScreen
    case thirdScreen
    
    var image: Image {
        switch self {
        case .firstScreen:
            Image("ImageOnboarding1")
        case .secondScreen:
            Image("ImageOnboarding2")
        case .thirdScreen:
            Image("ImageOnboarding3")
        }
    }
    
    var text: String {
        switch self {
        case .firstScreen:
            "Теперь все ваши документы в одном месте"
        case .secondScreen:
            "Доступ к файлам без интернета"
        case .thirdScreen:
            "Делитесь вашими файлами с другими"
        }
    }
}
