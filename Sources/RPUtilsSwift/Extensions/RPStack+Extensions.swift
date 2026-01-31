//
//  RPStack+Extensions.swift
//  RPUtilsSwift
//
//  Created by Arindam Karmakar on 31/01/26.
//

import RPGeneratedSwift

public extension RPStack {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.stack = self
        return widget
    }
}
