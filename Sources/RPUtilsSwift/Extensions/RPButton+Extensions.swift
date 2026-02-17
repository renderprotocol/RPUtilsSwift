//
//  RPButton+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPButton {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.button = self
        return widget
    }
}
