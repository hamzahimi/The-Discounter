//
//  SettingsVC.swift
//  discounter-ios-app
//
//  Created by MindZBASE on 04/07/2023.
//

import Foundation
import Foundation
import UIKit

class SettingVC: UIViewController {
  
    let imageArray = ["icMyProfile","settings_selected","icChat","icShare3","ic_feedback","icStore","icReport","icInfo","icLogout"]
    
    var lblTittle : UILabel?
    var contentView : UIView?
    var profileContent: UIView?
    var imgProfile : UIImageView?
    var lblUserName : UILabel?
    var tableSetting : UITableView?
    let scrollView = UIScrollView()
    let scroolContent = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = appColor.PrimaryColor
        
        configueUI()
        configueTableView()
        // Do any additional setup after loading the view.
    }
    func inilization(){
        lblTittle = UILabel(title: "Setting", fontColor: appColor.whiteColor, alignment: .center, numberOfLines: 1, font: UIFont.appBoldFont(size: 18.0))
        contentView = UIView(backgroundColor: appColor.whiteColor)
        
        //Profile View
        profileContent =  {
            let contentview = UIView(backgroundColor: .red,cornerRadius: 50,borderColor: UIColor(red:0.94, green:0.94, blue:0.94, alpha:1.0).cgColor , borderWidth: 5.0,maskToBounds: true)
            imgProfile = UIImageView(image: UIImage(named: "dp"), highlightedImage: .none)
            imgProfile?.layer.cornerRadius = 50
            contentview.addSubview(imgProfile!)
            imgProfile?.fillSuperview()
            return contentview
        }()
        
        lblUserName = UILabel(title: "Ameer Hamza", fontColor: appColor.textColour, alignment: .center, numberOfLines: 1, font: UIFont.appRegularFont(size: 19))
        
        tableSetting = UITableView()
        
        
        
    }
    
    func configueTableView(){
        
        tableSetting?.dataSource = self
        tableSetting?.delegate = self
        tableSetting?.register(SettingCell.self, forCellReuseIdentifier: "SettingCell")
        tableSetting?.showsVerticalScrollIndicator = false
        
        
    }
    func configueUI(){
        inilization()
       // configScrollView()
        view.addMultipleSubViews(views: lblTittle!,contentView!)
        
        
        lblTittle?.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor,padding: .init(top: -90, left: 8, bottom: 0, right: 8))
        contentView?.anchor(top: lblTittle?.bottomAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor,padding: .init(top: 10, left: 0, bottom: 0, right: 0))
        
        contentView?.addMultipleSubViews(views: profileContent!, lblUserName!, tableSetting!)
        
        profileContent?.anchor(top: contentView?.topAnchor, leading: nil, bottom: nil, trailing: nil,padding: .init(top: 50, left: 0, bottom: 0, right: 0),size: .init(width: 100, height: 100))
        
        profileContent?.centerXInSuperview()
        
        lblUserName?.anchor(top: profileContent?.bottomAnchor, leading: contentView?.leadingAnchor, bottom: nil, trailing: contentView?.trailingAnchor,padding: .init(top: 12, left: 0, bottom: 0, right: 0))
        tableSetting?.anchor(top: lblUserName?.bottomAnchor, leading: contentView?.leadingAnchor, bottom: contentView?.bottomAnchor, trailing: contentView?.trailingAnchor,padding: .init(top: 10, left: 0, bottom: 10, right: 5))
        
        
    }
    
    
    
        func configScrollView(){
            
            //ScrollView
            view.addSubview(scroolContent)
            scroolContent.addSubview(scrollView)
            scrollView.addSubview(contentView!)
        
            scroolContent.fillSuperview(padding: .init(top: 0, left: 0, bottom: 0, right: 0))
            scrollView.fillSuperview(padding: .init(top: 10, left: 10, bottom: 10, right: 10))
            scrollView.backgroundColor = .yellow
            contentView?.fillSuperview(padding: .init(top: -40, left: 0, bottom: 0, right: 0))
            contentView?.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
            contentView?.backgroundColor = .gray
            
    //        imgContentView.fillSuperview(padding: .init(top: 5, left: 5, bottom: 5, right: 5))
            
            
        }
    

}
extension SettingVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell", for: indexPath) as! SettingCell
      
        cell.imgIcon?.image = UIImage(named: imageArray[indexPath.row])
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       return 70
    }
    
}
