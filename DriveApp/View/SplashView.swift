//
//  SplashView.swift
//  DriveApp
//
//  Created by Диана Горовая on 24.10.2025.
//
import SwiftUI

struct SplashView: View {
    @State private var appear = false
    
    var body: some View {
        ZStack {
            Color(.white).ignoresSafeArea()
            
            VStack(spacing: 0) {
                Image("logo")
                    .scaleEffect(appear ? 1.0 : 0.8)
                    .opacity(appear ? 1.0 : 0.0)
                    .animation(.spring(response: 0.6, dampingFraction: 0.8), value: appear)
                    .padding(.bottom, 29)
                
                HStack {
                    Text("Skillbox")
                        .font(.system(size: 30))
                        .bold()
                    
                    Text("Drive")
                        .font(.system(size: 30))
                }
            }
        }
        .onAppear {
            appear = true
        }
    }
}

#Preview {
    SplashView()
}
