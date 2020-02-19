//
//  StringTests.swift
//  RebornTests
//
//  Created by Mehmet Eroğlu on 18.02.2020.
//  Copyright © 2020 Mustafa GUNES. All rights reserved.
//

import XCTest
@testable import Reborn

class StringTests: XCTestCase {
    
    var phrase = "Bir berber bir berbere gel beraber bir berber dükkanı acalim demis."
    var replacingString = "Bir berber iki berbere gel beraber iki berber dükkanı acalim demis."
    
    func testReplacingOccurrences() {
        XCTAssertEqual(phrase.replacingOccurrences(of: "bir", with: "iki", count: 2), replacingString)
    }
}
