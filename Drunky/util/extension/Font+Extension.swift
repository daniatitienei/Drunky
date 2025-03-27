//
//  Font+Extension.swift
//  Leaffy
//
//  Created by Daniel Atitienei on 15.02.2025.
//

import SwiftUICore

extension Font {

    public static func regular(size: CGFloat) -> Font {
        return Font.custom("Poppins-Regular", size: size)
    }

    public static func medium(size: CGFloat) -> Font {
        return Font.custom("Poppins-Medium", size: size)
    }

    public static func semiBold(size: CGFloat) -> Font {
        return Font.custom("Poppins-SemiBold", size: size)
    }

    public static func bold(size: CGFloat) -> Font {
        return Font.custom("Poppins-Bold", size: size)
    }
    
    public static func extraBold(size: CGFloat) -> Font {
        return Font.custom("Poppins-ExtraBold", size: size)
    }
}
