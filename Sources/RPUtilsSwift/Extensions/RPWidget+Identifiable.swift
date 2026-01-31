//
//  RPWidget+Identifiable.swift
//  RPUtilsSwift
//
//  Created by Arindam Karmakar on 31/01/26.
//

import Foundation
import RPGeneratedSwift

extension RPWidget: @retroactive Identifiable {
    static func withID(_ id: UUID = .init()) -> RPWidget {
        var widget = RPWidget()
        widget.id = id.uuidString
        return widget
    }
}
