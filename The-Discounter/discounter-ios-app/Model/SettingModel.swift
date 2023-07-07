//
//  SettingModel.swift
//  discounter-ios-app
//
//  Created by MindZBASE on 07/07/2023.
//

import Foundation
import UIKit

struct SettingModel{
    var tittle : String?
    var image: String?
}


//This data come from API In other Cases but in this we use constant.
struct SettingInfo {
    static let setingData = [
    SettingModel(tittle: "My Profile",image: "icMyProfile"),
    SettingModel(tittle: "Preferences",image: "settings_selected"),
    SettingModel(tittle: "Support & Live chat",image: "icChat"),
    SettingModel(tittle: "Invite friend",image: "icShare3"),
    SettingModel(tittle: "Feedback",image: "ic_feedback"),
    SettingModel(tittle: "Recommend an Outlet",image: "icStore"),
    SettingModel(tittle: "Report an Outlet",image: "icReport"),
    SettingModel(tittle: "About",image: "icInfo"),
    SettingModel(tittle: "Logout",image: "icLogout"),
    ]
}

