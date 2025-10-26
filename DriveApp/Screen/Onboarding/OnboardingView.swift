//
//  ContentView.swift
//  DriveApp
//
//  Created by Диана Горовая on 24.10.2025.
//

import SwiftUI

struct OnboardingView: View {
    @ObservedObject private var viewModel = OnboardingViewModel()
    
    
    var body: some View {
        VStack {
            TabView(selection: $viewModel.page) {
                ForEach(
                    Array(viewModel.model.screens.enumerated()),
                    id: \.element
                ) { index, element in
                    VStack {
                        element.image
                        Text(element.text)
                            .font(.system(size: 17))
                            .padding(.top, 67)
                            .frame(maxWidth: 250)
                            .multilineTextAlignment(.center)
                    }
                    .tag(index)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            CustomPageIndicator(
                count: viewModel.model.screens.count,
                current: viewModel.page
            )
                .padding(.bottom, 41)
            
            Button {
                viewModel.didTapContinue()
            } label: {
                Text("Далее")
                    .foregroundStyle(.white)
                    .font(.system(size: 16))
                    .padding(.vertical)
            }
            .frame(maxWidth: .infinity)
            .background(.blue)
            .cornerRadius(16)
            .padding(.bottom, 92)

        }
        .padding(.horizontal)
        .ignoresSafeArea()
    }
}

#Preview {
    OnboardingView()
}
