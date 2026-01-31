//
//  Typealiases.swift
//  RPUtilsSwift
//
//  Created by Arindam Karmakar on 31/01/26.
//

import Foundation

public typealias RPPortable = Codable & Hashable & Equatable & Identifiable & Sendable

public typealias RPPortableEnum = RPPortable & CaseIterable
