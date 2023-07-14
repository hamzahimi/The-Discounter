//
//  UITextField+Extension.swift
//  discounter-ios-app
//
//  Created by MindZBASE on 04/07/2023.
//

import Foundation
import UIKit

class discounterTextField: UITextField {

    let underlineLayer = CALayer()
    var borderColor: UIColor?
    var placetitle: String?
    var textFont: UIFont?
    
    /// Size the underline layer and position it as a one point line under the text field.
    func setupUnderlineLayer() {
        var frame = self.bounds
        frame.origin.y = frame.size.height - 1
        frame.size.height = 4

        underlineLayer.frame = frame
        underlineLayer.backgroundColor = UIColor.red.cgColor
        self.placeholder = placetitle
        self.font = textFont
      
    }

    // In `init?(coder:)` Add our underlineLayer as a sublayer of the view's main layer
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.layer.addSublayer(underlineLayer)
    }

    // in `init(frame:)` Add our underlineLayer as a sublayer of the view's main layer
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.addSublayer(underlineLayer)
    }

    // Any time we are asked to update our subviews,
    // adjust the size and placement of the underline layer too
    override func layoutSubviews() {
        super.layoutSubviews()
        setupUnderlineLayer()
    }
    
    init(PlaceHolder : String = "", font: UIFont = .systemFont(ofSize: 14), foregroundColor: UIColor = .black ,borderColor: UIColor = .clear, borderWidth: CGFloat = 0.0, frame: CGRect = .zero) {
           super.init(frame: frame)
        self.backgroundColor = backgroundColor
        self.borderColor = borderColor
        self.textFont = font
        self.placetitle = PlaceHolder
        //setupUnderlineLayer()
        
        let border = CALayer()
                let width = CGFloat(1.0)
        border.borderColor = UIColor.red.cgColor
                border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
                border.borderWidth = width
                self.layer.addSublayer(border)
                self.layer.masksToBounds = true
    }
    
    
    
    
    
}
//
//  UITextField+Extension.swift
//  discounter-ios-app
//
//  Created by MindZBASE on 04/07/2023.
//

import Foundation
import UIKit

class borderTextField: UITextField {

    let underlineLayer = CALayer()
    var borderColor: UIColor?
    var placetitle: String?
    var textFont: UIFont?
    
    /// Size the underline layer and position it as a one point line under the text field.
    func setupUnderlineLayer() {
        var frame = self.bounds
        frame.origin.y = frame.size.height - 1
        frame.size.height = 4

        underlineLayer.frame = frame
        underlineLayer.backgroundColor = UIColor.red.cgColor
        self.placeholder = placetitle
        self.font = textFont
      
    }

    // In `init?(coder:)` Add our underlineLayer as a sublayer of the view's main layer
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.layer.addSublayer(underlineLayer)
    }

    // in `init(frame:)` Add our underlineLayer as a sublayer of the view's main layer
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.addSublayer(underlineLayer)
    }

    // Any time we are asked to update our subviews,
    // adjust the size and placement of the underline layer too
    override func layoutSubviews() {
        super.layoutSubviews()
        setupUnderlineLayer()
    }
    
    init(PlaceHolder : String = "", font: UIFont = .systemFont(ofSize: 14), foregroundColor: UIColor = .black ,borderColor: UIColor = .clear, borderWidth: CGFloat = 0.0, frame: CGRect = .zero) {
           super.init(frame: frame)
        self.backgroundColor = backgroundColor
        self.borderColor = borderColor
        self.textFont = font
        self.placetitle = PlaceHolder
        //setupUnderlineLayer()
        
        let border = CALayer()
                let width = CGFloat(1.0)
        border.borderColor = UIColor.red.cgColor
                border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
                border.borderWidth = width
                self.layer.addSublayer(border)
                self.layer.masksToBounds = true
    }
    
    
    
    
    
}
