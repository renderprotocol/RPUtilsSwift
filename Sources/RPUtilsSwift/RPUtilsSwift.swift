// The Swift Programming Language
// https://docs.swift.org/swift-book
//
//  RPUtilsSwift.swift
//  RPUtilsSwift
//
//  Created by Arindam Karmakar on 31/01/26.
//

import Foundation

public enum RPUtils {
    public static func utilsVersion() -> Version {
        let major: Int = 0
        let minor: Int = 0
        let patch: Int = 1
        return .init(major: major, minor: minor, patch: patch)
    }
    
    public struct Version: RPPortable {
        public let id: String
        
        public let major: Int
        public let minor: Int
        public let patch: Int
        
        internal init(major: Int, minor: Int, patch: Int) {
            self.id = "\(major).\(minor).\(patch)+\(UUID().uuidString)"
            self.major = major
            self.minor = minor
            self.patch = patch
        }
        
        public func toString() -> String { "\(major).\(minor).\(patch)" }
    }
}
