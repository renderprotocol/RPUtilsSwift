//
//  RPSafeArea+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPSafeArea {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.safeArea = self
        return widget
    }
}
