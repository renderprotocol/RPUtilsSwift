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
    
    public mutating func set(border: RPBorder) {
        var modifier = RPModifier()
        modifier.border = border
        self.modifiers.append(modifier)
    }
    
    public mutating func set(padding: RPPadding) {
        var modifier = RPModifier()
        modifier.padding = padding
        self.modifiers.append(modifier)
    }
    
    public mutating func set(backgroundColor: RPColor) {
        var modifier = RPModifier()
        modifier.backgroundColor = backgroundColor
        self.modifiers.append(modifier)
    }
    
    public mutating func set(clip: RPClip) {
        var modifier = RPModifier()
        modifier.clip = clip
        self.modifiers.append(modifier)
    }
}
