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
    var btnBack : disCounterButton?
    let scrollView = UIScrollView()
    var txtName : discounterTextField?
   
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
        
        btnBack = disCounterButton(image: UIImage(named: "back"), backgroundColor: .clear, cornerRadius:  0.0, borderColor: .clear, borderWidth:  0.0, imageSize: .init(width: 40, height: 40))
        txtName = discounterTextField(PlaceHolder: "User Name",font: UIFont.appBoldFont(size: 18.0),borderWidth: 1)
        
//        (borderColor: appColor.textColour as! CGColor)
    }
    
    func configueUI(){
        inilization()
        view.addMultipleSubViews(views: lblTittle!,contentView_Scroll!,btnBack!)
      
        configScrollView()
       
        
        lblTittle?.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor,padding: .init(top: 10, left: 8, bottom: 0, right: 8))
        
        btnBack?.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil,padding: .init(top: 0, left: 8, bottom: 0, right: 0),size: .init(width: 42, height: 42))
       
        contentView_Scroll?.anchor(top: lblTittle?.bottomAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor,padding: .init(top: 10, left: 0, bottom: 0, right: 0))
        
        contentView?.addMultipleSubViews(views: profileContent!, txtName!)
//
        profileContent?.anchor(top: contentView?.topAnchor, leading: nil, bottom: nil, trailing: nil,padding: .init(top: 50, left: 0, bottom: 0, right: 0),size: .init(width: 100, height: 100))

        profileContent?.centerXInSuperview()

        btnBack?.addTarget(self, action: #selector(onTap(_:)), for: .touchUpInside)
        
         txtName?.anchor(top: profileContent?.bottomAnchor, leading: contentView?.leadingAnchor, bottom: contentView?.bottomAnchor, trailing: contentView?.trailingAnchor,padding: .init(top: 7, left: 7, bottom: 7, right: 7),size: .init(width: 0, height: 40))
       
    }
    
    
    
        func configScrollView(){
            
            contentView_Scroll?.addSubview(scrollView)
            scrollView.addSubview(contentView!)
            scrollView.fillSuperview(padding: .init(top: 10, left: 10, bottom: 10, right: 10))
         
            contentView?.fillSuperview(padding: .init(top: -40, left: 0, bottom: 0, right: 0))
            contentView?.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
            scrollView.showsVerticalScrollIndicator = false
        }
    
    
    @objc private func onTap(_ sender: UIButton){
      print("Back Press")
       navigationController?.popViewController(animated: true)
      //  hidesBottomBarWhenPushed = false
       
    }
}
