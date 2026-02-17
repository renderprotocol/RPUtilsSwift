//
//  RPCenter+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPCenter {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.center = self
        return widget
    }
}
