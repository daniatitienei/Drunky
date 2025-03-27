//
//  Color.swift
//  PrisAppen
//
//  Created by Atitienei Daniel on 21.07.2023.
//

import SwiftUI

extension Color {

    init(hex: Int64, alpha: Double = 1) {
        self.init(
                .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }

    static let neonPink = Color(hex: 0xFFFF007F)
    static let neonPurple = Color(hex: 0xFF8A2BE2)
    static let darkBlue = Color(hex: 0xFF1C1C3C)

}
