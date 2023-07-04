//
//  ViewController.swift
//  discounter-ios-app
//
//  Created by MindZBASE on 04/07/2023.
//

import UIKit

class ViewController: UIViewController {
    
    var ContentView = UIView()
    var TxtFldname = UITextField()
    var TxtFldpswrd = UITextField()
    var BtnLogIn = UIButton()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        inilization()
        configueUI()
        // Do any additional setup after loading the view.
    }
    func inilization(){
        
        
        TxtFldname.placeholder = "Enter First Name"
        TxtFldname.layer.borderColor = UIColor.black.cgColor
        TxtFldname.layer.borderWidth = 0.5
        TxtFldname.textAlignment = .center
        TxtFldname.layer.cornerRadius = 12
        
        TxtFldpswrd.placeholder = "Enter First Name"
        TxtFldpswrd.layer.borderColor = UIColor.black.cgColor
        TxtFldpswrd.layer.borderWidth = 0.5
        TxtFldpswrd.textAlignment = .center
        TxtFldpswrd.layer.cornerRadius = 12
        
        BtnLogIn = UIButton()
        BtnLogIn.setTitle( "Log In" , for: .normal )
        BtnLogIn.layer.cornerRadius = 15
        BtnLogIn.backgroundColor = .systemPurple
        BtnLogIn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        
        
    }
    func configueUI(){
        view.addSubview(ContentView)
        ContentView.addSubview(TxtFldname)
        ContentView.addSubview(TxtFldpswrd)
        ContentView.addSubview(BtnLogIn)
        
        
        
        ContentView.fillSuperview(padding: .init(top: 5, left: 5, bottom: 5, right: 5))
        ContentView.backgroundColor = .white
        
        TxtFldname.anchor(top: ContentView.topAnchor, leading: ContentView.leadingAnchor, bottom: nil, trailing: ContentView.trailingAnchor,padding: .init(top: 200, left: 20, bottom: 0, right: 20),size: .init(width: 25, height: 40))
        
        TxtFldpswrd.anchor(top: TxtFldname.bottomAnchor, leading: ContentView.leadingAnchor, bottom: nil, trailing: ContentView.trailingAnchor,padding: .init(top: 30, left: 20, bottom: 0, right: 20),size: .init(width: 25, height: 40))
        
        BtnLogIn.anchor(top: TxtFldpswrd.bottomAnchor, leading: ContentView.leadingAnchor, bottom: nil, trailing: ContentView.trailingAnchor,padding: .init(top: 50, left: 90, bottom: 0, right: 90),size: .init(width: 0, height: 40))
        
    }
    

}

