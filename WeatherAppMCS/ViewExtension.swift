//
//  ViewExtension.swift
//  WeatherAppMCS
//
//  Created by MCS on 11/8/17.
//  Copyright © 2017 Zach Chandler. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        
        get{
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}

