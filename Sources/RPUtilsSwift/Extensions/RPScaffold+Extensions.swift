//
//  RPScaffold+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPScaffold {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.scaffold = self
        return widget
    }
}
