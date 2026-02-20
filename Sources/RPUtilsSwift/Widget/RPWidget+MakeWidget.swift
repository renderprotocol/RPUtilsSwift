//
//  RPWidget+MakeWidget.swift
//  RPUtilsSwift
//
//  Consolidated makeWidget() extensions for all component types.
//  Each extension converts a component into an RPWidget by assigning
//  itself to the appropriate content slot.
//

import RPGeneratedSwift

// MARK: - Layout

public extension RPRow {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.row = self
        return widget
    }
}

public extension RPColumn {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.column = self
        return widget
    }
}

public extension RPStack {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.stack = self
        return widget
    }
}

public extension RPScrollable {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.scrollable = self
        return widget
    }
}

public extension RPLazyList {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.lazyList = self
        return widget
    }
}

public extension RPLazyGrid {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.lazyGrid = self
        return widget
    }
}

public extension RPWrap {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.wrap = self
        return widget
    }
}

public extension RPCenter {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.center = self
        return widget
    }
}

public extension RPExpanded {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.expanded = self
        return widget
    }
}

// MARK: - Modifiers

public extension RPPadding {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.padding = self
        return widget
    }
}

public extension RPBackground {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.background = self
        return widget
    }
}

public extension RPBorder {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.border = self
        return widget
    }
}

public extension RPClip {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.clip = self
        return widget
    }
}

public extension RPOpacity {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.opacity = self
        return widget
    }
}

public extension RPVisibility {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.visibility = self
        return widget
    }
}

public extension RPShadow {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.shadow = self
        return widget
    }
}

public extension RPSizeBox {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.sizeBox = self
        return widget
    }
}

public extension RPSafeArea {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.safeArea = self
        return widget
    }
}

public extension RPAspectRatio {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.aspectRatio = self
        return widget
    }
}

public extension RPPositioned {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.positioned = self
        return widget
    }
}

// MARK: - Display

public extension RPText {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.text = self
        return widget
    }
}

public extension RPImage {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.image = self
        return widget
    }
}

public extension RPIcon {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.icon = self
        return widget
    }
}

public extension RPSpacer {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.spacer = self
        return widget
    }
}

public extension RPDivider {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.divider = self
        return widget
    }
}

public extension RPProgressIndicator {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.progressIndicator = self
        return widget
    }
}

public extension RPButton {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.button = self
        return widget
    }
}

// MARK: - Input

public extension RPTextField {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.textField = self
        return widget
    }
}

public extension RPToggle {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.toggle = self
        return widget
    }
}

public extension RPSlider {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.slider = self
        return widget
    }
}

// MARK: - Composite

public extension RPCard {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.card = self
        return widget
    }
}

public extension RPListTile {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.listTile = self
        return widget
    }
}

public extension RPAppBar {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.appBar = self
        return widget
    }
}

public extension RPBottomNavBar {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.bottomNavBar = self
        return widget
    }
}

public extension RPBadge {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.badge = self
        return widget
    }
}

public extension RPScaffold {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.scaffold = self
        return widget
    }
}

// MARK: - Interactive

public extension RPGestureDetector {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.gestureDetector = self
        return widget
    }
}
