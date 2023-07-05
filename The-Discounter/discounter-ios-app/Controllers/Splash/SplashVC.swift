//
//  SplashVC.swift
//  discounter-ios-app
//
//  Created by MindZBASE on 04/07/2023.
//

import Foundation
import UIKit

class SplashController: UIViewController {
    
    var imgSplash :UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureUI()
        
        
    }
    func initilization(){
        
        imgSplash = UIImageView(image: UIImage(named: "bg"), highlightedImage: .none)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) { [self] in
            imgSplash?.image = UIImage(named: "SplashImage")
            setNextScreen()
        }
    }
    func configureUI(){
        initilization()
        view.addSubview(imgSplash!)
        imgSplash?.fillSuperview()
    }
    
    func setNextScreen(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            present(tabBarViewController(), animated: false)
            func present(_ viewControllerToPresent: UIViewController,
                         animated flag: Bool,
                         completion: (() -> Void)? = nil) {
                viewControllerToPresent.modalPresentationStyle = .fullScreen
                super.present(viewControllerToPresent, animated: flag, completion: completion)
            }
            
            
        }
        
    }
    
}
