//
//  RPColumn+Extensions.swift
//  RPUtilsSwift
//
//  Created by Arindam Karmakar on 31/01/26.
//

import RPGeneratedSwift

public extension RPColumn {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.column = self
        return widget
    }
}
