//
//  RPWrap+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPWrap {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.wrap = self
        return widget
    }
}
