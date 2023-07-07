//
//  MyProfileVC.swift
//  discounter-ios-app
//
//  Created by MindZBASE on 05/07/2023.
//


import Foundation
import UIKit

class MyProfileVC: UIViewController {
  
    
    var lblTittle : UILabel?
    var contentView : UIView?
    var contentView_Scroll : UIView?
    var profileContent: UIView?
    var imgProfile : UIImageView?
  
    let scrollView = UIScrollView()
   
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = appColor.PrimaryColor
        configueUI()
        navigationController?.setNavigationBarHidden(true, animated: false)
      
        // Do any additional setup after loading the view.
    }
    func inilization(){
        lblTittle = UILabel(title: "My Profile", fontColor: appColor.whiteColor, alignment: .center, numberOfLines: 1, font: UIFont.appBoldFont(size: 18.0))
        contentView = UIView(backgroundColor: appColor.whiteColor)
        contentView_Scroll =  UIView(backgroundColor: appColor.whiteColor)
        //Profile View
        profileContent =  {
            let contentview = UIView(backgroundColor: .red,cornerRadius: 50,borderColor: UIColor(red:0.94, green:0.94, blue:0.94, alpha:1.0).cgColor , borderWidth: 5.0,maskToBounds: true)
            imgProfile = UIImageView(image: UIImage(named: "dp"), highlightedImage: .none)
            imgProfile?.layer.cornerRadius = 50
            contentview.addSubview(imgProfile!)
            imgProfile?.fillSuperview()
            return contentview
        }()
        
        
        
        
    }
    
    func configueUI(){
        inilization()
        configScrollView()
        view.addMultipleSubViews(views: lblTittle!,contentView_Scroll!)
        
        
        lblTittle?.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor,padding: .init(top: 10, left: 8, bottom: 0, right: 8))
        contentView_Scroll?.anchor(top: lblTittle?.bottomAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor,padding: .init(top: 10, left: 0, bottom: 0, right: 0))
        
        contentView?.addMultipleSubViews(views: profileContent!)
//
        profileContent?.anchor(top: contentView?.topAnchor, leading: nil, bottom: nil, trailing: nil,padding: .init(top: 50, left: 0, bottom: 0, right: 0),size: .init(width: 100, height: 100))

        profileContent?.centerXInSuperview()

         
    }
    
    
    
        func configScrollView(){
            
            contentView_Scroll?.addSubview(scrollView)
            scrollView.addSubview(contentView!)
            scrollView.fillSuperview(padding: .init(top: 10, left: 10, bottom: 10, right: 10))
         
            contentView?.fillSuperview(padding: .init(top: -40, left: 0, bottom: 0, right: 0))
            contentView?.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
            scrollView.showsVerticalScrollIndicator = false
        }
    

}
