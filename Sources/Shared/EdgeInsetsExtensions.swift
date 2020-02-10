//
//  EdgeInsetsExtensions.swift
//  Reborn
//
//  Created by Mustafa GUNES on 10.02.2020.
//  Copyright © 2020 Mustafa GUNES. All rights reserved.
//

#if os(iOS) || os(tvOS) || os(watchOS)
import UIKit
/// EdgeInsets
public typealias EdgeInsets = UIEdgeInsets
#elseif os(macOS)
import Foundation
/// EdgeInsets
public typealias EdgeInsets = NSEdgeInsets

public extension NSEdgeInsets {
    /// An edge insets struct whose top, left, bottom, and right fields are all set to 0.
    static let zero = NSEdgeInsets()
}

extension NSEdgeInsets: Equatable {
    /// Returns a Boolean value indicating whether two values are equal.
    ///
    /// Equality is the inverse of inequality. For any values `a` and `b`,
    /// `a == b` implies that `a != b` is `false`.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    public static func == (lhs: NSEdgeInsets, rhs: NSEdgeInsets) -> Bool {
        return lhs.top == rhs.top &&
            lhs.left == rhs.left &&
            lhs.bottom == rhs.bottom &&
            lhs.right == rhs.right
    }
}

#endif
