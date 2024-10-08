//
//  ViewController.swift
//  GDTMobSDK-iOS-XCFramework
//
//  Created by 443623074@qq.com on 09/27/2024.
//  Copyright (c) 2024 443623074@qq.com. All rights reserved.
//

import UIKit
import GDTMobSDK

class ViewController: UIViewController {
    lazy var versionLabel: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 18)
        view.textColor = .red
        view.textAlignment = .center
        self.view.addSubview(view)
        view.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -64).isActive = true
        view.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 40).isActive = true
        view.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -40).isActive = true
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //        GDTMobSDK
        /**
         crash
         "The Google Mobile Ads SDK was initialized without an application ID. Google AdMob publishers, follow instructions at https://googlemobileadssdk.page.link/admob-ios-update-plist to set a valid application ID. Google Ad Manager publishers, follow instructions at https://googlemobileadssdk.page.link/ad-manager-ios-update-plist."
         */
        let version = "SDK Version is \(GDTSDKConfig.version())"
        print(version)
        // your AppId
        GDTSDKConfig.initWithAppId("123")
        GDTSDKConfig.start { isSourcess, error in
            if let error = error {
                print(error.localizedDescription)
            }
            print(isSourcess)
        }
        self.versionLabel.text = version
    }
    
}
