//
//  RPTextStyle+Presets.swift
//  RPUtilsSwift
//
//  Preset text style factories and convenience builders.
//

import RPGeneratedSwift

// MARK: - RPTextStyle Convenience Builders

public extension RPTextStyle {

    /// Creates a styled RPTextStyle with commonly used parameters.
    static func styled(
        fontSize: Float,
        fontWeight: RPFontWeight = .regular,
        color: RPColor? = nil,
        fontFamily: String? = nil,
        fontStyle: RPFontStyle = .unspecified,
        lineHeight: Float? = nil,
        letterSpacing: Float? = nil,
        decoration: RPTextDecoration = .unspecified
    ) -> RPTextStyle {
        var style = RPTextStyle()
        style.fontSize = fontSize
        style.fontWeight = fontWeight
        if let color = color { style.color = color }
        if let fontFamily = fontFamily { style.fontFamily = fontFamily }
        style.fontStyle = fontStyle
        if let lineHeight = lineHeight { style.lineHeight = lineHeight }
        if let letterSpacing = letterSpacing { style.letterSpacing = letterSpacing }
        style.decoration = decoration
        return style
    }

    // MARK: - Typography Scale Presets (Material Design-inspired)

    /// Large display text (57pt, light weight).
    static var displayLarge: RPTextStyle { styled(fontSize: 57, fontWeight: .light) }

    /// Medium display text (45pt, regular weight).
    static var displayMedium: RPTextStyle { styled(fontSize: 45, fontWeight: .regular) }

    /// Small display text (36pt, regular weight).
    static var displaySmall: RPTextStyle { styled(fontSize: 36, fontWeight: .regular) }

    /// Large headline text (32pt, regular weight).
    static var headlineLarge: RPTextStyle { styled(fontSize: 32, fontWeight: .regular) }

    /// Medium headline text (28pt, regular weight).
    static var headlineMedium: RPTextStyle { styled(fontSize: 28, fontWeight: .regular) }

    /// Small headline text (24pt, regular weight).
    static var headlineSmall: RPTextStyle { styled(fontSize: 24, fontWeight: .regular) }

    /// Large title text (22pt, regular weight).
    static var titleLarge: RPTextStyle { styled(fontSize: 22, fontWeight: .regular) }

    /// Medium title text (16pt, medium weight).
    static var titleMedium: RPTextStyle { styled(fontSize: 16, fontWeight: .medium) }

    /// Small title text (14pt, medium weight).
    static var titleSmall: RPTextStyle { styled(fontSize: 14, fontWeight: .medium) }

    /// Large body text (16pt, regular weight).
    static var bodyLarge: RPTextStyle { styled(fontSize: 16, fontWeight: .regular) }

    /// Medium body text (14pt, regular weight).
    static var bodyMedium: RPTextStyle { styled(fontSize: 14, fontWeight: .regular) }

    /// Small body text (12pt, regular weight).
    static var bodySmall: RPTextStyle { styled(fontSize: 12, fontWeight: .regular) }

    /// Large label text (14pt, medium weight).
    static var labelLarge: RPTextStyle { styled(fontSize: 14, fontWeight: .medium) }

    /// Medium label text (12pt, medium weight).
    static var labelMedium: RPTextStyle { styled(fontSize: 12, fontWeight: .medium) }

    /// Small label text (11pt, medium weight).
    static var labelSmall: RPTextStyle { styled(fontSize: 11, fontWeight: .medium) }

    // MARK: - Modifier Methods

    /// Returns a copy with the specified color.
    func withColor(_ color: RPColor) -> RPTextStyle {
        var style = self
        style.color = color
        return style
    }

    /// Returns a copy with the specified font weight.
    func withWeight(_ weight: RPFontWeight) -> RPTextStyle {
        var style = self
        style.fontWeight = weight
        return style
    }

    /// Returns a copy with italic font style.
    var italic: RPTextStyle {
        var style = self
        style.fontStyle = .italic
        return style
    }

    /// Returns a copy with underline decoration.
    var underlined: RPTextStyle {
        var style = self
        style.decoration = .underline
        return style
    }

    /// Returns a copy with line-through decoration.
    var strikethrough: RPTextStyle {
        var style = self
        style.decoration = .lineThrough
        return style
    }

    /// Returns a copy with the specified font family.
    func withFontFamily(_ fontFamily: String) -> RPTextStyle {
        var style = self
        style.fontFamily = fontFamily
        return style
    }
}
