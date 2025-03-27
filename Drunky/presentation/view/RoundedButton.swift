//
//  RoundedButtonView.swift
//  PrisAppen
//
//  Created by Atitienei Daniel on 21.07.2023.
//

import SwiftUI

struct RoundedButton<Content: View>: View {
    
    var isEnabled: Bool = true

    var height: CGFloat = 48
    var radius: CGFloat = 16
    var horizontalPadding: CGFloat = 40
    var verticalPadding: CGFloat = 0
    var backgroundColor: Color = Color.neonPink
    var outlineSize: CGFloat = 1

    var onClick: () -> Void

    @ViewBuilder let content: Content

    var body: some View {
        Button(action: onClick) {
            content
        }
        .frame(height: height)
        .padding(.horizontal, horizontalPadding)
        .padding(.vertical, verticalPadding)
        .background(backgroundColor)
        .cornerRadius(radius)
        .opacity(isEnabled ? 1 : 0.6)
        .disabled(!isEnabled)
    }
}
