//
//  RPGestureDetector+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPGestureDetector {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.gestureDetector = self
        return widget
    }
}
