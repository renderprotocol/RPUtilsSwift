//
//  RPPositioned+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPPositioned {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.positioned = self
        return widget
    }
}
