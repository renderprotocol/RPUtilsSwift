//
//  RPBorder+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPBorder {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.border = self
        return widget
    }
}
