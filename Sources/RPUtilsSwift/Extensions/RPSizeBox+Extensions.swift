//
//  RPSizeBox+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPSizeBox {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.sizeBox = self
        return widget
    }
}
