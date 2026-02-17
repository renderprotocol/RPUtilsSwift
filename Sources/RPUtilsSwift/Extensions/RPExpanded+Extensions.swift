//
//  RPExpanded+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPExpanded {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.expanded = self
        return widget
    }
}
