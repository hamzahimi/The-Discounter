//
//  SettingCell.swift
//  discounter-ios-app
//
//  Created by MindZBASE on 06/07/2023.
//

import Foundation
import UIKit

class SettingCell : UITableViewCell {
    
    var imgIcon : UIImageView?
    var lblTitle : UILabel?
    var imgForward : UIImageView?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configueUI()
        
        
    }
    
    func inilization(){
         
        imgIcon = UIImageView(image: UIImage(named: "icMyProfile"), highlightedImage: .none)
        imgIcon?.tintColor = UIColor.black
        lblTitle = UILabel(title: "My Profile", fontColor: appColor.blackColor, alignment: .left, numberOfLines: 1, font: UIFont.appRegularFont(size: 16.0))
        imgForward = UIImageView(image: UIImage(named: "ic_next"), highlightedImage: .none)
        
        
    }
    
    func configueUI (){
        inilization()
        contentView.addMultipleSubViews(views: imgIcon!,lblTitle!,imgForward!)
        
        imgIcon?.anchor(top: nil, leading: contentView.leadingAnchor, bottom: nil, trailing: nil,padding: .init(top: 0, left: 25, bottom: 0, right: 0),size: .init(width: 25, height: 25))
        imgIcon?.centerYInSuperview()
        
        lblTitle?.anchor(top: contentView.topAnchor, leading: imgIcon?.trailingAnchor, bottom: contentView.bottomAnchor, trailing: imgForward?.leadingAnchor,padding: .init(top: 8, left: 15, bottom: 8, right: 8))
        
        imgForward?.anchor(top: nil, leading: nil, bottom: nil, trailing: contentView.trailingAnchor,padding: .init(top: 0, left: 0, bottom: 0, right: 12),size: .init(width: 15, height: 20))
        imgForward?.centerYInSuperview()
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
