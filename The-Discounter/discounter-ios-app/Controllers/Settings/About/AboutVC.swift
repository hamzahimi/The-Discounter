//
//  AboutVC.swift
//  discounter-ios-app
//
//  Created by MindZBASE on 07/07/2023.
//

import Foundation
import UIKit
import SafariServices
class AboutVC: UIViewController {
  
    
    var lblTittle : UILabel?
   var contentView : UIView?
   var tableSetting : UITableView?
   var lblVersionTittle : UILabel?
    var lblVersionNo : UILabel?
    var settingData : [String] = ["About The App","Privacy Policy","Terms Of Use"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = appColor.PrimaryColor
        configueUI()
        configueTableView()
        navigationController?.setNavigationBarHidden(true, animated: false)
      
        // Do any additional setup after loading the view.
    }
    func inilization(){
        lblTittle = UILabel(title: "About", fontColor: appColor.whiteColor, alignment: .center, numberOfLines: 1, font: UIFont.appBoldFont(size: 18.0))
         lblVersionTittle = UILabel(title: "Version", fontColor: appColor.grayColor, alignment: .center, numberOfLines: 1, font: UIFont.appRegularFont(size: 18.0))
         lblVersionNo = UILabel(title: "1.0", fontColor: appColor.grayColor, alignment: .center, numberOfLines: 1, font: UIFont.appRegularFont(size: 16.0))
        contentView = UIView(backgroundColor: appColor.whiteColor)
        
        tableSetting = UITableView()
        
        
        
    }
    
    func configueTableView(){
        
        tableSetting?.dataSource = self
        tableSetting?.delegate = self
        tableSetting?.register(AboutCell.self, forCellReuseIdentifier: "AboutCell")
        tableSetting?.showsVerticalScrollIndicator = false
        
        
    }
    func configueUI(){
        inilization()
        view.addMultipleSubViews(views: lblTittle!,contentView!)
        
        lblTittle?.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor,padding: .init(top: 8, left: 8, bottom: 0, right: 8))
        contentView?.anchor(top: lblTittle?.bottomAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor,padding: .init(top: 10, left: 0, bottom: 0, right: 0))
        
        contentView?.addMultipleSubViews(views: tableSetting!,lblVersionNo!,lblVersionTittle!)

        tableSetting?.anchor(top: contentView?.topAnchor, leading: contentView?.leadingAnchor, bottom: contentView?.bottomAnchor, trailing: contentView?.trailingAnchor,padding: .init(top: 30, left: 0, bottom: 10, right: 5))
        
        lblVersionTittle?.anchor(top:  nil, leading: contentView?.leadingAnchor, bottom: lblVersionNo?.topAnchor, trailing: nil,padding: .init(top: 0, left: 22, bottom: 8, right: 0))
        lblVersionNo?.anchor(top: nil, leading: lblVersionTittle?.leadingAnchor, bottom: contentView?.bottomAnchor, trailing: nil,padding: .init(top: 0, left: 0, bottom: 40, right: 0))
        
    }
    
    
    
    

}
extension AboutVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AboutCell", for: indexPath) as! AboutCell
        cell.lblTitle?.text = settingData[indexPath.row]
        cell.selectionStyle = .none
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        AboutVCOptionsEvent(indexPath: indexPath)
       
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       return 70
    }
    
}
extension AboutVC {
    
    func AboutVCOptionsEvent(indexPath : IndexPath) {
        
        
        switch indexPath.row {
        case 0:
            showTutorial(constantString.ABOUT_LINK)
            break
        case 1:
            showTutorial(constantString.PRIVACY_LINK)
            break
        case 2:
            showTutorial(constantString.TEREMS_LINK)
            break
            
        default:
            break
        }
    }
    
    func showTutorial(_ which: String) {
        if let url = URL(string: which) {
            let config = SFSafariViewController.Configuration()
            config.entersReaderIfAvailable = true

            let vc = SFSafariViewController(url: url, configuration: config)
            present(vc, animated: true)
        }
    }
    
}
     
     
     
