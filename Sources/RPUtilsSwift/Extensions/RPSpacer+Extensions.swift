//
//  RPSpacer+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPSpacer {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.spacer = self
        return widget
    }
}
