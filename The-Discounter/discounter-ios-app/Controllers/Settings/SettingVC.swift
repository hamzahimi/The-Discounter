//
//  SettingsVC.swift
//  discounter-ios-app
//
//  Created by MindZBASE on 04/07/2023.
//

import Foundation
import UIKit

class SettingVC: UIViewController {
  
    
    var lblTittle : UILabel?
    var contentView : UIView?
    var contentView_Scroll : UIView?
    var profileContent: UIView?
    var imgProfile : UIImageView?
    var lblUserName : UILabel?
    var tableSetting : UITableView?
    let scrollView = UIScrollView()
   
    var settingData : [SettingModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = appColor.PrimaryColor
        settingData = SettingInfo.setingData
        configueUI()
        configueTableView()
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
           hidesBottomBarWhenPushed = true
        
     
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
           hidesBottomBarWhenPushed = false
       
    }
    
    func inilization(){
        lblTittle = UILabel(title: "Setting", fontColor: appColor.whiteColor, alignment: .center, numberOfLines: 1, font: UIFont.appBoldFont(size: 18.0))
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
        configScrollView()
        view.addMultipleSubViews(views: lblTittle!,contentView_Scroll!)
        
        
        lblTittle?.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor,padding: .init(top: -90, left: 8, bottom: 0, right: 8))
        contentView_Scroll?.anchor(top: lblTittle?.bottomAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor,padding: .init(top: 10, left: 0, bottom: 0, right: 0))
        
        contentView?.addMultipleSubViews(views: profileContent!, lblUserName!, tableSetting!)

        profileContent?.anchor(top: contentView?.topAnchor, leading: nil, bottom: nil, trailing: nil,padding: .init(top: 50, left: 0, bottom: 0, right: 0),size: .init(width: 100, height: 100))

        profileContent?.centerXInSuperview()

        lblUserName?.anchor(top: profileContent?.bottomAnchor, leading: contentView?.leadingAnchor, bottom: nil, trailing: contentView?.trailingAnchor,padding: .init(top: 12, left: 0, bottom: 0, right: 0))
        tableSetting?.anchor(top: lblUserName?.bottomAnchor, leading: contentView?.leadingAnchor, bottom: contentView?.bottomAnchor, trailing: contentView?.trailingAnchor,padding: .init(top: 10, left: 0, bottom: 10, right: 5),size: .init(width: 0, height: 660))
        
        
    }
    
    
    
        func configScrollView(){
            
            contentView_Scroll?.addSubview(scrollView)
            scrollView.addSubview(contentView!)
            scrollView.fillSuperview(padding: .init(top: 10, left: 10, bottom: 10, right: 10))
         
            contentView?.fillSuperview(padding: .init(top: -40, left: 0, bottom: 0, right: 0))
            contentView?.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
            scrollView.showsVerticalScrollIndicator = false
            tableSetting?.isScrollEnabled = false
        }
    

}
extension SettingVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell", for: indexPath) as! SettingCell
      
        cell.imgIcon?.image = UIImage(named: settingData[indexPath.row].image ?? "")
        cell.lblTitle?.text = settingData[indexPath.row].tittle ?? ""
        cell.selectionStyle = .none
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        SettingsOptionsEvent(indexPath: indexPath)
       
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       return 70
    }
    
}
extension SettingVC {
    
    func SettingsOptionsEvent(indexPath : IndexPath) {
       switch indexPath.row {
        case 0:
         
            pushTo(viewController: MyProfileVC())
            break
        case 1:
           // pushToPreference()
           break
        case 2:
            
            //pushToHelpChatVC ()
            
            break
            
        case 3:
            shareAppUrl()
            break
        case 4:
//            pushToFeedback()
            break
       
        case 5:
//            pushToRecommendedVC()
           
            break
        case 6:
//             pushToReportAnOffer()
           
            break
       
        case 7:
            self.pushTo(viewController: AboutVC())
           break
            
        case 8:
            logout()
            break
        default:
            break
        }
    }
    func shareAppUrl(){
        
        let shareAll = ["Hi 😊,\n Check out The Discounter App, Pretty cool and exclusive Deals on everything in Dubai without paying anything, you can get it for free from here : \n\n iOS: \(constantString.APP_STORE_URL) \n \n Android: \(constantString.ANDROID_APP_LINK)"]
        
        let activityViewController = UIActivityViewController(activityItems: shareAll, applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view
        self.present(activityViewController, animated: true, completion: nil)
    }
    func logout(){
        // create the alert
               let alert = UIAlertController(title: "Logout", message: "Are you sure want to logout?", preferredStyle: UIAlertController.Style.alert)

               // add the actions (buttons)
               alert.addAction(UIAlertAction(title: "Yes", style: UIAlertAction.Style.default,handler: { action in
                   self.dismiss(animated: true)
               }))
               alert.addAction(UIAlertAction(title: "No", style: UIAlertAction.Style.cancel,handler: { action in
                   self.dismiss(animated: true)
               }))

               // show the alert
               self.present(alert, animated: true, completion: nil)
    }
}
