//
//  RPContainer+Extensions.swift
//  RPUtilsSwift
//
//  Created by Arindam Karmakar on 12/02/26.
//

import RPGeneratedSwift

public extension RPContainer {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.container = self
        return widget
    }
}
