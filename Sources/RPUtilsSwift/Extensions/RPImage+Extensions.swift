//
//  RPImage+Extensions.swift
//  RPUtilsSwift
//
//  Created by Arindam Karmakar on 31/01/26.
//

import RPGeneratedSwift

public extension RPImage {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.image = self
        return widget
    }
}
