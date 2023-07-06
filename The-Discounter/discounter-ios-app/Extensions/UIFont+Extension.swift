//
//  UIFont+Extension.swift
//  discounter-ios-app
//
//  Created by MindZBASE on 06/07/2023.
//

import Foundation
import UIKit

extension UIFont {
    class func appRegularFont(size:CGFloat) -> UIFont
    {
        return UIFont(name: "Lato-Regular", size: size)!
    }
    
    class func appMediumFont(size:CGFloat) -> UIFont
    {
        return UIFont(name: "Lato-Semibold", size: size)!
    }
    class func appBoldFont(size:CGFloat) -> UIFont
    {
        return UIFont(name: "Lato-Bold", size: size)!
    }
}

