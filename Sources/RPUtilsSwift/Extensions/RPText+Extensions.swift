//
//  RPText+Extensions.swift
//  RPUtilsSwift
//
//  Created by Arindam Karmakar on 31/01/26.
//

import RPGeneratedSwift

public extension RPText {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.text = self
        return widget
    }
}
