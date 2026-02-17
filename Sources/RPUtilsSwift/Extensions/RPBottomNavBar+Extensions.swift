//
//  RPBottomNavBar+Extensions.swift
//  RPUtilsSwift
//

import RPGeneratedSwift

public extension RPBottomNavBar {
    func makeWidget() -> RPWidget {
        var widget = RPWidget.withID()
        widget.bottomNavBar = self
        return widget
    }
}
