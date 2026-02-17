//
//  RPLazyGrid+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPLazyGrid {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.lazyGrid = self
        return widget
    }
}
