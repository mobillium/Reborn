//
//  StringExtensions.swift
//  Reborn
//
//  Created by Mehmet Eroğlu on 18.02.2020.
//  Copyright © 2020 Mustafa GUNES. All rights reserved.
//

#if canImport(Foundation)
import Foundation

public extension String {
    
    /// Replacing a fix number of substrings with another substring.
    ///
    /// - Parameters:
    ///   - search: Search substring for replacement.
    ///   - replacement: Substring that we want to replace with.
    ///   - maxReplacements: Fix number of substring that we want to replace.
    /// - Returns: Give the new string with all replacements (if exists).
    func replacingOccurrences(of target: String, with replacement: String, count maxReplacements: Int) -> String {
        var count = 0
        var returnValue = self

        while let range = returnValue.range(of: target) {
            returnValue = returnValue.replacingCharacters(in: range, with: replacement)
            count += 1
            
            // exit as soon as we've made all replacements
            if count == maxReplacements {
                return returnValue
            }
        }
        return returnValue
    }
}
#endif
