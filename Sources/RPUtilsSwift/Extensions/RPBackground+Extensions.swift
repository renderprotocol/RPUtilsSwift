//
//  RPBackground+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPBackground {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.background = self
        return widget
    }
}
