//
//  RPBadge+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPBadge {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.badge = self
        return widget
    }
}
