//
//  RPAspectRatio+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPAspectRatio {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.aspectRatio = self
        return widget
    }
}
