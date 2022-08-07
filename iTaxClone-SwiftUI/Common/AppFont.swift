//
//  FontManager.swift
//  iTaxClone-SwiftUI
//
//  Created by Sorawit Trutsat on 7/8/2565 BE.
//

import SwiftUI

struct AppFont {
    enum AppFontWeight {
        case bold
        case extraLight
        case light
        case medium
        case regular
        case semiBold
        case thin
        
        var fontName: String {
            switch self {
            case .bold:
                return "IBMPlexSansThai-Bold"
            case .extraLight:
                return "IBMPlexSansThai-ExtraLight"
            case .light:
                return "IBMPlexSansThai-Light"
            case .medium:
                return "IBMPlexSansThai-Medium"
            case .regular:
                return "IBMPlexSansThai-Regular"
            case .semiBold:
                return "IBMPlexSansThai-SemiBold"
            case .thin:
                return "IBMPlexSansThai-Thin"
            }
        }
    }
    
    enum AppFontSize {
        case extraSmall
        case small
        case medium
        case large
        case extraLarge
        case extraExtraLarge
        case custom(size: CGFloat)
        
        var size: CGFloat {
            switch self {
            case .extraSmall:
                return 12
            case .small:
                return 16
            case .medium:
                return 24
            case .large:
                return 32
            case .extraLarge:
                return 48
            case .extraExtraLarge:
                return 60
            case .custom(let size):
                return size
            }
        }
    }
    
    static func apply(weight: AppFontWeight, size: AppFontSize) -> Font {
        return Font.custom(weight.fontName, fixedSize: size.size)
    }
}
