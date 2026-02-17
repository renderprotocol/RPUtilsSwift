//
//  RPTextField+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPTextField {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.textField = self
        return widget
    }
}
