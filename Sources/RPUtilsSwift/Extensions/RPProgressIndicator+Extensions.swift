//
//  RPProgressIndicator+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPProgressIndicator {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.progressIndicator = self
        return widget
    }
}
