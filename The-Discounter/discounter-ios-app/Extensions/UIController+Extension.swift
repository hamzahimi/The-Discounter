//
//  UIController+Extension.swift
//  discounter-ios-app
//
//  Created by MindZBASE on 05/07/2023.
//

import Foundation
import UIKit

extension UIViewController{
    
    public func pushTo(viewController: UIViewController, animated: Bool = true){
        
           // hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(viewController, animated: animated)
    }
    
}
