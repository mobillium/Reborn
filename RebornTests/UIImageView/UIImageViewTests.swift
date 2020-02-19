//
//  UIImageViewTests.swift
//  RebornTests
//
//  Created by Alihan Aktay on 18.02.2020.
//  Copyright © 2020 Mustafa GUNES. All rights reserved.
//

import XCTest
@testable import Reborn

#if canImport(UIKit)
import UIKit

#if !os(watchOS)
@available(tvOS 9.0, *)
final class UIImageViewTests: XCTestCase {

    func testQrCodeGenerator() {
        let generatedQr = UIImageView(with: "alihan")
        if let ciImage =  generatedQr.image?.ciImage{
            var options: [String: Any]
            let context = CIContext()
            options = [CIDetectorAccuracy: CIDetectorAccuracyHigh]
            let qrDetector = CIDetector(ofType: CIDetectorTypeQRCode, context: context, options: options)
            if ciImage.properties.keys.contains((kCGImagePropertyOrientation as String)){
                options = [CIDetectorImageOrientation: ciImage.properties[(kCGImagePropertyOrientation as String)] ?? 1]
            }else {
                options = [CIDetectorImageOrientation: 1]
            }
            let features = (qrDetector?.features(in: ciImage, options: options))!
            for case let row as CIQRCodeFeature in features{
                XCTAssertEqual(row.messageString, "alihan","Not Equal")
                }
        }
        else {
            XCTFail("UIImage not converted to CIImage")
        }

    }

}

#endif

#endif
