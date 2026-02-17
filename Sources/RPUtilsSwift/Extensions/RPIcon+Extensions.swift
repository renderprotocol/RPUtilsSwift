//
//  RPIcon+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPIcon {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.icon = self
        return widget
    }
}
