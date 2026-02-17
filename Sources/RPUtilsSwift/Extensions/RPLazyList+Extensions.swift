//
//  RPLazyList+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPLazyList {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.lazyList = self
        return widget
    }
}
