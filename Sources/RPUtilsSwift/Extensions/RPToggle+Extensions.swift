//
//  RPToggle+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPToggle {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.toggle = self
        return widget
    }
}
