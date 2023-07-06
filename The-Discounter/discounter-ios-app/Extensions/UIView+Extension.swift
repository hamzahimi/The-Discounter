//
//  UIView+Extension.swift
//  discounter-ios-app
//
//  Created by MindZBASE on 06/07/2023.
//

import Foundation
import UIKit

extension UIView{
    convenience init(backgroundColor: UIColor = .clear, cornerRadius: CGFloat = 0.0, borderColor: CGColor = UIColor.clear.cgColor, borderWidth: CGFloat = 0.0, maskToBounds: Bool = false) {
        self.init()
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = cornerRadius
        self.layer.borderColor = borderColor
        self.layer.borderWidth = borderWidth
        self.layer.masksToBounds = maskToBounds
    }
    
    
    public func addMultipleSubViews(views: UIView...){
        for view in views{
            addSubview(view)
        }
    }
}
