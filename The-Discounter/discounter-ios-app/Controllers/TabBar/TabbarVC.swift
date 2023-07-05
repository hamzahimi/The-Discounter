
import Foundation
import UIKit
import SwiftUI

class tabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [
                        createNavController(ViewController: HomeVC(),title:"HOME", imageName: "home_normal"),
                        createNavController(ViewController:FavouritesVC(),title:"FAVOURITES", imageName: "star_normal"),
                        createNavController(ViewController:RedemptionsVC(),title:"REDEMPTIONS", imageName: "wallet_normal"),
                        createNavController(ViewController:GiftVC(),title:"GIFT", imageName: "giftActive"),
                        createNavController(ViewController:SettingVC(),title:"SETTINGS", imageName: "settings_normal"),
            
                    ]
        self.tabBar.isTranslucent = false
        self.tabBar.unselectedItemTintColor = .gray
        self.tabBar.selectedImageTintColor = .orange
        self.tabBar.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
       if let items = tabBar.items {
                   // Setting the title text color of all tab bar items:
                   for item in items {
                       item.setTitleTextAttributes([.foregroundColor: UIColor.black], for: .normal)
                       item.setTitleTextAttributes([.foregroundColor: UIColor.orange], for: .selected)
                   }
               }
     
    }
    
    fileprivate func createNavController(ViewController : UIViewController , title : String, imageName : String) -> UIViewController{
        
        let navController = UINavigationController(rootViewController: ViewController)
        navController.navigationBar.prefersLargeTitles = true
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        
        return navController
    }
}



