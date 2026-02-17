//
//  RPAppBar+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPAppBar {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.appBar = self
        return widget
    }
}
