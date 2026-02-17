//
//  RPSlider+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPSlider {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.slider = self
        return widget
    }
}
