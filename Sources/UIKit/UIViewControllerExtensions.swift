//
//  UIViewControllerExtensions.swift
//  Reborn
//
//  Created by tunay alver on 18.02.2020.
//  Copyright © 2020 Mustafa GUNES. All rights reserved.
//

import UIKit

extension UIViewController {
    
    /// Returns the classes name as String.
    class var identifier: String {
        return String(describing: self)
    }
    
}
