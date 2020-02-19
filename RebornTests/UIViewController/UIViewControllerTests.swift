//
//  UIViewControllerTests.swift
//  RebornTests
//
//  Created by tunay alver on 18.02.2020.
//  Copyright © 2020 Mustafa GUNES. All rights reserved.
//

import XCTest
@testable import Reborn

final class UIViewControllerTests: XCTestCase {

    func testWithUIController() {
        let identifier = UIViewController.identifier
        XCTAssertEqual(identifier, "UIViewController")
    }
}
