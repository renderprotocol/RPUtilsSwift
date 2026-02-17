//
//  RPWidget+Modifiers.swift
//  RPUtilsSwift
//
//  Fluent modifier chaining extensions for RPWidget.
//

import Foundation
import RPGeneratedSwift

// MARK: - RPWidget Modifier Chaining

public extension RPWidget {

    // MARK: - Padding

    /// Wraps this widget in an RPPadding with uniform padding on all sides.
    func withPadding(_ all: Float) -> RPWidget {
        var padding = RPPadding()
        padding.child = self
        padding.all = all
        return padding.makeWidget()
    }

    /// Wraps this widget in an RPPadding with symmetric vertical/horizontal padding.
    func withPadding(vertical: Float = 0, horizontal: Float = 0) -> RPWidget {
        var sym = RPSymmetricPadding()
        sym.vertical = vertical
        sym.horizontal = horizontal
        var padding = RPPadding()
        padding.child = self
        padding.symmetric = sym
        return padding.makeWidget()
    }

    /// Wraps this widget in an RPPadding with explicit top/bottom/left/right padding.
    func withPadding(top: Float = 0, bottom: Float = 0, left: Float = 0, right: Float = 0) -> RPWidget {
        var explicit = RPExplicitPadding()
        explicit.top = top
        explicit.bottom = bottom
        explicit.left = left
        explicit.right = right
        var padding = RPPadding()
        padding.child = self
        padding.explicit = explicit
        return padding.makeWidget()
    }

    // MARK: - Background

    /// Wraps this widget in an RPBackground with the given color.
    func withBackground(_ color: RPColor) -> RPWidget {
        var bg = RPBackground()
        bg.child = self
        bg.color = color
        return bg.makeWidget()
    }

    /// Wraps this widget in an RPBackground with a color specified by RGBA values.
    func withBackground(red: Int32, green: Int32, blue: Int32, opacity: Float = 1.0) -> RPWidget {
        return withBackground(RPColor.rgba(red: red, green: green, blue: blue, opacity: opacity))
    }

    // MARK: - Border

    /// Wraps this widget in an RPBorder.
    func withBorder(width: Float, color: RPColor, radius: Float? = nil) -> RPWidget {
        var border = RPBorder()
        border.child = self
        border.width = width
        border.color = color
        if let radius = radius {
            border.radius = radius
        }
        return border.makeWidget()
    }

    // MARK: - Opacity

    /// Wraps this widget in an RPOpacity modifier.
    func withOpacity(_ value: Float) -> RPWidget {
        var opacity = RPOpacity()
        opacity.child = self
        opacity.value = value
        return opacity.makeWidget()
    }

    // MARK: - Visibility

    /// Wraps this widget in an RPVisibility modifier.
    func withVisibility(_ visible: Bool) -> RPWidget {
        var visibility = RPVisibility()
        visibility.child = self
        visibility.visible = visible
        return visibility.makeWidget()
    }

    // MARK: - Shadow

    /// Wraps this widget in an RPShadow modifier.
    func withShadow(color: RPColor? = nil, radius: Float = 4, offsetX: Float = 0, offsetY: Float = 2) -> RPWidget {
        var shadow = RPShadow()
        shadow.child = self
        if let color = color {
            shadow.color = color
        }
        shadow.radius = radius
        shadow.offsetX = offsetX
        shadow.offsetY = offsetY
        return shadow.makeWidget()
    }

    // MARK: - Size Box

    /// Wraps this widget in an RPSizeBox with explicit width and/or height.
    func withSize(width: Float? = nil, height: Float? = nil) -> RPWidget {
        var sizeBox = RPSizeBox()
        sizeBox.child = self
        if let width = width { sizeBox.width = width }
        if let height = height { sizeBox.height = height }
        return sizeBox.makeWidget()
    }

    /// Wraps this widget in an RPSizeBox with min/max constraints.
    func withConstraints(
        minWidth: Float? = nil,
        minHeight: Float? = nil,
        maxWidth: Float? = nil,
        maxHeight: Float? = nil
    ) -> RPWidget {
        var sizeBox = RPSizeBox()
        sizeBox.child = self
        if let minWidth = minWidth { sizeBox.minWidth = minWidth }
        if let minHeight = minHeight { sizeBox.minHeight = minHeight }
        if let maxWidth = maxWidth { sizeBox.maxWidth = maxWidth }
        if let maxHeight = maxHeight { sizeBox.maxHeight = maxHeight }
        return sizeBox.makeWidget()
    }

    // MARK: - Center

    /// Wraps this widget in an RPCenter.
    func centered() -> RPWidget {
        var center = RPCenter()
        center.child = self
        return center.makeWidget()
    }

    // MARK: - Expanded

    /// Wraps this widget in an RPExpanded with optional flex factor.
    func expanded(flex: Int32 = 1) -> RPWidget {
        var expanded = RPExpanded()
        expanded.child = self
        expanded.flex = flex
        return expanded.makeWidget()
    }

    // MARK: - Safe Area

    /// Wraps this widget in an RPSafeArea.
    func withSafeArea(top: Bool = true, bottom: Bool = true, leading: Bool = true, trailing: Bool = true) -> RPWidget {
        var safeArea = RPSafeArea()
        safeArea.child = self
        safeArea.top = top
        safeArea.bottom = bottom
        safeArea.leading = leading
        safeArea.trailing = trailing
        return safeArea.makeWidget()
    }

    // MARK: - Aspect Ratio

    /// Wraps this widget in an RPAspectRatio.
    func withAspectRatio(_ ratio: Float, contentMode: RPContentMode = .fit) -> RPWidget {
        var aspectRatio = RPAspectRatio()
        aspectRatio.child = self
        aspectRatio.ratio = ratio
        aspectRatio.contentMode = contentMode
        return aspectRatio.makeWidget()
    }

    // MARK: - Positioned

    /// Wraps this widget in an RPPositioned.
    func positioned(top: Float? = nil, bottom: Float? = nil, leading: Float? = nil, trailing: Float? = nil) -> RPWidget {
        var positioned = RPPositioned()
        positioned.child = self
        if let top = top { positioned.top = top }
        if let bottom = bottom { positioned.bottom = bottom }
        if let leading = leading { positioned.leading = leading }
        if let trailing = trailing { positioned.trailing = trailing }
        return positioned.makeWidget()
    }

    // MARK: - Clip

    /// Wraps this widget in an RPClip with a rounded rectangle shape.
    func clipped(cornerRadius: Float, type: RPClipType = .antiAlias) -> RPWidget {
        var shape = RPClipShape()
        var roundedRect = RPShapeRoundedRectangle()
        roundedRect.radius = cornerRadius
        shape.roundedRectangle = roundedRect
        var clip = RPClip()
        clip.child = self
        clip.shape = shape
        clip.type = type
        return clip.makeWidget()
    }

    /// Wraps this widget in an RPClip with a circle shape.
    func clippedCircle(type: RPClipType = .antiAlias) -> RPWidget {
        var shape = RPClipShape()
        shape.circle = RPShapeCircle()
        var clip = RPClip()
        clip.child = self
        clip.shape = shape
        clip.type = type
        return clip.makeWidget()
    }

    /// Wraps this widget in an RPClip with a capsule shape.
    func clippedCapsule(type: RPClipType = .antiAlias) -> RPWidget {
        var shape = RPClipShape()
        shape.capsule = RPShapeCapsule()
        var clip = RPClip()
        clip.child = self
        clip.shape = shape
        clip.type = type
        return clip.makeWidget()
    }

    // MARK: - Gesture Detector

    /// Wraps this widget in an RPGestureDetector with a tap action.
    func onTap(_ action: RPAction) -> RPWidget {
        var detector = RPGestureDetector()
        detector.child = self
        detector.onTap = action
        return detector.makeWidget()
    }

    /// Wraps this widget in an RPGestureDetector with a long-press action.
    func onLongPress(_ action: RPAction) -> RPWidget {
        var detector = RPGestureDetector()
        detector.child = self
        detector.onLongPress = action
        return detector.makeWidget()
    }

    // MARK: - Scroll View

    /// Wraps this widget in an RPScrollView.
    func scrollable(axis: RPAxis = .vertical, showsIndicators: Bool = true) -> RPWidget {
        var scrollView = RPScrollView()
        scrollView.child = self
        scrollView.axis = axis
        scrollView.showsIndicators = showsIndicators
        return scrollView.makeWidget()
    }
}
