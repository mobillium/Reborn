//
//  UIViewExtensions.swift
//  Reborn
//
//  Created by Turgay Afsar on 19.02.2020.
//  Copyright © 2020 Mustafa GUNES. All rights reserved.
//

#if canImport(UIKit)
import UIKit

extension UIView {
    
    /// Take a screenshot of the view
    var screenshot: UIImage? {
        UIGraphicsBeginImageContext(self.frame.size)
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        layer.render(in: context)
        return UIGraphicsGetImageFromCurrentImageContext()
    }
}

#endif
