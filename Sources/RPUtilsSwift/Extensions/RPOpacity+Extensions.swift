//
//  RPOpacity+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPOpacity {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.opacity = self
        return widget
    }
}
