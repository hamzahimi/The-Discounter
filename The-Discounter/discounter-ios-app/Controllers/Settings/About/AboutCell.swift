//
//  AboutCell.swift
//  discounter-ios-app
//
//  Created by MindZBASE on 07/07/2023.
//

import Foundation
import Foundation
import UIKit

class AboutCell : UITableViewCell {
    
   
    var lblTitle : UILabel?
    var imgForward : UIImageView?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configueUI()
        
        
    }
    
    func inilization(){
         
       lblTitle = UILabel(title: "My Profile", fontColor: appColor.blackColor, alignment: .left, numberOfLines: 1, font: UIFont.appRegularFont(size: 16.0))
        imgForward = UIImageView(image: UIImage(named: "ic_next"), highlightedImage: .none)
        
        
    }
    
    func configueUI (){
        inilization()
        contentView.addMultipleSubViews(views: lblTitle!,imgForward!)
       
        lblTitle?.anchor(top: contentView.topAnchor, leading: contentView.leadingAnchor, bottom: contentView.bottomAnchor, trailing: imgForward?.leadingAnchor,padding: .init(top: 8, left: 15, bottom: 8, right: 8))
        
        imgForward?.anchor(top: nil, leading: nil, bottom: nil, trailing: contentView.trailingAnchor,padding: .init(top: 0, left: 0, bottom: 0, right: 12),size: .init(width: 15, height: 20))
        imgForward?.centerYInSuperview()
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
