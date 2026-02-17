//
//  RPPadding+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPPadding {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.padding = self
        return widget
    }
}
