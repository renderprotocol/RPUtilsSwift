//
//  RPRow+Extensions.swift
//  RPUtilsSwift
//
//  Created by Arindam Karmakar on 31/01/26.
//

import RPGeneratedSwift

public extension RPRow {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.row = self
        return widget
    }
}
