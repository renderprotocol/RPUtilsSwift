//
//  RPVisibility+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPVisibility {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.visibility = self
        return widget
    }
}
