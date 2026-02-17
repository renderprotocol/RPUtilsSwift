//
//  RPClip+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPClip {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.clip = self
        return widget
    }
}
