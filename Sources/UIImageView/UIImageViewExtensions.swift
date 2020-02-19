//
//  UIImageViewExtensions.swift
//  Reborn
//
//  Created by Alihan Aktay on 18.02.2020.
//  Copyright © 2020 Mustafa GUNES. All rights reserved.
//

#if canImport(UIKit)
import UIKit

#if !os(watchOS)
@available(tvOS 9.0, *)
public extension UIImageView {
    
    /// Generates QR Code from the string and sets the qr code image to your UIImageView.
    ///
    /// - Parameters:
    ///   - qrString: The string that you want to transform to QR Code.
    convenience init(with qrString: String) {
        self.init()
        let data = qrString.data(using: String.Encoding.ascii)
        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            let transform = CGAffineTransform(scaleX: 10, y: 10)
            if let output = filter.outputImage?.transformed(by: transform) {
                self.image = UIImage(ciImage: output)
            }
        }
    }
}


#endif

#endif
