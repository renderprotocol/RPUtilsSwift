//
//  RPShadow+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPShadow {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.shadow = self
        return widget
    }
}
