//
//  RPScrollView+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPScrollView {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.scrollView = self
        return widget
    }
}
