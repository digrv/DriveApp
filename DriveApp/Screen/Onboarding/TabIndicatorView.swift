//
//  TabIndicatorView.swift
//  DriveApp
//
//  Created by Диана Горовая on 26.10.2025.
//

import SwiftUI

struct CustomPageIndicator: View {
    let count: Int
    let current: Int

    var body: some View {
        HStack(spacing: 8) {
            ForEach(0..<count, id: \.self) { i in
                Circle()
                    .fill(i == current ? Color.blue : Color.gray.opacity(0.3))
                    .frame(width: 8, height: 8)
            }
        }
    }
}
