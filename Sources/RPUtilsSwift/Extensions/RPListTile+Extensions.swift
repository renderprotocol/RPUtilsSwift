//
//  RPListTile+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPListTile {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.listTile = self
        return widget
    }
}
