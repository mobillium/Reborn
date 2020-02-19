//
//  DecodableExtensions.swift
//  Reborn
//
//  Created by Mustafa GUNES on 19.02.2020.
//  Copyright © 2020 Mustafa GUNES. All rights reserved.
//

#if canImport(Foundation)
import Foundation
#endif

public extension Decodable {

    #if canImport(Foundation)
    /// Parsing the model in Decodable type
    /// - Parameters:
    ///   - data: Data.
    ///   - decoder: JSONDecoder. Initialized by default
    init?(from data: Data, using decoder: JSONDecoder = .init()) {
        guard let parsed = try? decoder.decode(Self.self, from: data) else { return nil }
        self = parsed
    }
    #endif
}
