//
//  RPColor+Factories.swift
//  RPUtilsSwift
//
//  Convenience factory methods for RPColor.
//

import Foundation
import RPGeneratedSwift

// MARK: - RPColor Convenience Factories

public extension RPColor {
    
    /// Creates an RPColor from RGBA values (0–255 for RGB, 0.0–1.0 for opacity).
    static func rgba(red: Int32, green: Int32, blue: Int32, opacity: Float = 1.0) -> RPColor {
        var color = RPColor()
        color.red = red
        color.green = green
        color.blue = blue
        color.opacity = opacity
        return color
    }
    
    /// Creates an RPColor from a hex string (e.g. "#FF5733" or "FF5733").
    static func hex(_ hex: String) -> RPColor {
        var hexStr = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        if hexStr.hasPrefix("#") {
            hexStr.removeFirst()
        }
        
        guard hexStr.count == 6 || hexStr.count == 8 else {
            return RPColor()
        }
        
        var hexValue: UInt64 = 0
        Scanner(string: hexStr).scanHexInt64(&hexValue)
        
        if hexStr.count == 8 {
            return rgba(
                red: Int32((hexValue >> 24) & 0xFF),
                green: Int32((hexValue >> 16) & 0xFF),
                blue: Int32((hexValue >> 8) & 0xFF),
                opacity: Float(hexValue & 0xFF) / 255.0
            )
        } else {
            return rgba(
                red: Int32((hexValue >> 16) & 0xFF),
                green: Int32((hexValue >> 8) & 0xFF),
                blue: Int32(hexValue & 0xFF)
            )
        }
    }
    
    // MARK: - Common Color Presets
    
    static var defaultWhite: RPColor { rgba(red: 255, green: 255, blue: 255) }
    static var defaultBlack: RPColor { rgba(red: 0, green: 0, blue: 0) }
    static var defaultClear: RPColor { rgba(red: 0, green: 0, blue: 0, opacity: 0) }
    static var defaultRed: RPColor { rgba(red: 255, green: 59, blue: 48) }
    static var defaultOrange: RPColor { rgba(red: 255, green: 149, blue: 0) }
    static var defaultYellow: RPColor { rgba(red: 255, green: 204, blue: 0) }
    static var defaultGreen: RPColor { rgba(red: 52, green: 199, blue: 89) }
    static var defaultBlue: RPColor { rgba(red: 0, green: 122, blue: 255) }
    static var defaultPurple: RPColor { rgba(red: 175, green: 82, blue: 222) }
    static var defaultPink: RPColor { rgba(red: 255, green: 45, blue: 85) }
    static var defaultGray: RPColor { rgba(red: 142, green: 142, blue: 147) }
    static var defaultLightGray: RPColor { rgba(red: 209, green: 209, blue: 214) }
    static var defaultDarkGray: RPColor { rgba(red: 72, green: 72, blue: 74) }
    static var defaultTeal: RPColor { rgba(red: 48, green: 176, blue: 199) }
    
    /// Returns a copy of this color with the specified opacity.
    func withOpacity(_ opacity: Float) -> RPColor {
        var color = self
        color.opacity = opacity
        return color
    }
}
