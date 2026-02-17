//
//  RPDivider+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPDivider {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.divider = self
        return widget
    }
}
