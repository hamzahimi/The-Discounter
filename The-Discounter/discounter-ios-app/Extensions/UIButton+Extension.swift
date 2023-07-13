//
//  UIButton+Extension.swift
//  discounter-ios-app
//
//  Created by MindZBASE on 04/07/2023.
//
import Foundation
import UIKit

class disCounterButton: UIButton {
    
    var title: String
    var image: UIImage?
    var titleFont: UIFont
    var foregroundColor: UIColor
    var cornerRadius: CGFloat
    var borderColor: UIColor
    var borderWidth: CGFloat
    var imageSize: CGSize
    
    var isTemplete: Bool? = false
    var tint : UIColor? =  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) {
        didSet{
            tintColor = tint
        }
    }
    
    var setTitle : String? = "" {
        didSet{
            setTitle(setTitle, for: .normal) //set title
        }
    }
    
    var ForegroundColor : UIColor? =   #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1) {
        didSet{
            setTitleColor(self.ForegroundColor, for: .normal) //set font color
        }
    }
    
    init(title: String = "", image: UIImage? = nil, font: UIFont = .systemFont(ofSize: 14), foregroundColor: UIColor = .black, backgroundColor: UIColor = .clear, cornerRadius: CGFloat = 0.0, borderColor: UIColor = .clear, borderWidth: CGFloat = 0.0, imageSize: CGSize = .init(width: 16, height: 16), isTemp:Bool? = false, frame: CGRect = .zero) {
        self.title = title
        self.image = image
        self.titleFont = font
        self.foregroundColor = foregroundColor
        self.cornerRadius = cornerRadius
        self.borderWidth = borderWidth
        self.borderColor = borderColor
     
        self.imageSize = imageSize
        self.isTemplete = isTemp
        super.init(frame: frame)
        self.backgroundColor = backgroundColor
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureUI(){
        setTitle(self.title, for: .normal) //set title
        titleLabel?.font = titleFont //set font
        setTitleColor(self.foregroundColor, for: .normal) //set font color
        
        if image != nil{
//            image?.withRenderingMode(.alwaysOriginal)
            var img: UIImage? = nil
            if isTemplete! {
                img = image!.withRenderingMode(.alwaysTemplate)
            } else {  img = image!.withRenderingMode(.alwaysOriginal) }
            self.setImage(img, for: .normal)
            self.tintColor = foregroundColor
            self.imageView?.contentMode = .scaleAspectFit
            
            self.imageView?.centerYInSuperview()
            self.imageView?.centerXInSuperview()
           
            self.imageView?.constrainWidth(constant: imageSize.width)
            self.imageView?.constrainHeight(constant: imageSize.height)
        }
        
        clipsToBounds = true
        layer.cornerRadius = self.cornerRadius //corner Radius
        layer.borderColor = self.borderColor.cgColor //border Color
        layer.borderWidth = self.borderWidth //border Width
        
       
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
}

