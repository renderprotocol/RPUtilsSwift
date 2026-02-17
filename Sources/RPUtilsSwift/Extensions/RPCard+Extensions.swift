//
//  RPCard+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPCard {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.card = self
        return widget
    }
}
