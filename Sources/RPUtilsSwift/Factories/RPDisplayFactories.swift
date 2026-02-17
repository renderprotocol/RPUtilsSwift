//
//  RPDisplayFactories.swift
//  RPUtilsSwift
//
//  Factory helpers for display and input components.
//

import RPGeneratedSwift

// MARK: - RPText Factory Helpers

public extension RPText {

    /// Creates a styled text with a value and style.
    static func styled(
        _ value: String,
        style: RPTextStyle = RPTextStyle(),
        maxLines: Int32? = nil,
        overflow: RPTextOverflow = .unspecified,
        alignment: RPTextAlignment = .unspecified
    ) -> RPText {
        var text = RPText()
        text.value = value
        text.style = style
        if let maxLines = maxLines { text.maxLines = maxLines }
        text.overflow = overflow
        text.textAlignment = alignment
        return text
    }

    /// Creates a simple text with font size and weight.
    static func simple(
        _ value: String,
        fontSize: Float = 14,
        fontWeight: RPFontWeight = .regular,
        color: RPColor? = nil
    ) -> RPText {
        let style = RPTextStyle.styled(fontSize: fontSize, fontWeight: fontWeight, color: color)
        return RPText.styled(value, style: style)
    }
}

// MARK: - RPImage Factory Helpers

public extension RPImage {

    /// Creates an image with URL and optional dimensions.
    static func remote(
        url: String,
        width: Float? = nil,
        height: Float? = nil,
        contentMode: RPContentMode = .fit,
        placeholderURL: String? = nil,
        altText: String? = nil
    ) -> RPImage {
        var image = RPImage()
        image.url = url
        if let width = width { image.width = width }
        if let height = height { image.height = height }
        image.contentMode = contentMode
        if let placeholderURL = placeholderURL { image.placeholderURL = placeholderURL }
        if let altText = altText { image.altText = altText }
        return image
    }
}

// MARK: - RPIcon Factory Helpers

public extension RPIcon {

    /// Creates an icon with a name, size, and color.
    static func named(
        _ name: String,
        size: Float? = nil,
        color: RPColor? = nil
    ) -> RPIcon {
        var icon = RPIcon()
        icon.name = name
        if let size = size { icon.size = size }
        if let color = color { icon.color = color }
        return icon
    }
}

// MARK: - RPButton Factory Helpers

public extension RPButton {

    /// Creates a button with a text label.
    static func text(
        _ title: String,
        action: RPAction,
        style: RPButtonStyle = .primary,
        disabled: Bool = false
    ) -> RPButton {
        let text = RPText.simple(title)
        var button = RPButton()
        button.label = text.makeWidget()
        button.action = action
        button.style = style
        button.disabled = disabled
        return button
    }

    /// Creates a button with a custom label widget.
    static func with(
        label: RPWidget,
        action: RPAction,
        style: RPButtonStyle = .primary,
        disabled: Bool = false
    ) -> RPButton {
        var button = RPButton()
        button.label = label
        button.action = action
        button.style = style
        button.disabled = disabled
        return button
    }
}

// MARK: - RPSpacer Factory Helpers

public extension RPSpacer {

    /// Creates a spacer with a minimum length.
    static func withMinLength(_ minLength: Float) -> RPSpacer {
        var spacer = RPSpacer()
        spacer.minLength = minLength
        return spacer
    }
}

// MARK: - RPDivider Factory Helpers

public extension RPDivider {

    /// Creates a divider with optional thickness and color.
    static func with(
        thickness: Float? = nil,
        color: RPColor? = nil
    ) -> RPDivider {
        var divider = RPDivider()
        if let thickness = thickness { divider.thickness = thickness }
        if let color = color { divider.color = color }
        return divider
    }
}

// MARK: - RPProgressIndicator Factory Helpers

public extension RPProgressIndicator {

    /// Creates a circular indeterminate progress indicator.
    static func circular(color: RPColor? = nil) -> RPProgressIndicator {
        var indicator = RPProgressIndicator()
        indicator.type = .circular
        if let color = color { indicator.color = color }
        return indicator
    }

    /// Creates a linear progress indicator with a value (0.0–1.0).
    static func linear(
        value: Float? = nil,
        color: RPColor? = nil,
        trackColor: RPColor? = nil
    ) -> RPProgressIndicator {
        var indicator = RPProgressIndicator()
        indicator.type = .linear
        if let value = value { indicator.value = value }
        if let color = color { indicator.color = color }
        if let trackColor = trackColor { indicator.trackColor = trackColor }
        return indicator
    }
}
