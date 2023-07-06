//
//  UILabel+Extension.swift
//  discounter-ios-app
//
//  Created by MindZBASE on 04/07/2023.
//

import Foundation
import UIKit

extension UILabel{
    
    convenience public init(title: String = "", fontColor: UIColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), alignment: NSTextAlignment = .left, numberOfLines: Int = 1, font: UIFont = .systemFont(ofSize: 18)) {
        self.init()
        self.text = title
        self.textColor = fontColor
        self.textAlignment = alignment
        self.numberOfLines = numberOfLines
        self.font = font
    }
}
