//
//  MainTabbarViewController.swift
//  ToraOffical
//
//  Created by Hung Vu on 16/03/2024.
//

import UIKit
import ESTabBarController_swift

class MainTabbarViewController: ESTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabbar()
    }
    
    private func setUpTabbar() {
        let hm001 = HM000Screen()
        hm001.tabBarItem = ESTabBarItem.init(ExampleBouncesContentView(),
                                                  title: "Trang chủ",
                                                  image: UIImage(named: "home"),
                                                  selectedImage: UIImage(named: "home_1"))
        
        let learnScreen = LN000Screen()
        learnScreen.tabBarItem = ESTabBarItem.init(ExampleBouncesContentView(),
                                                   title: "Học ngay",
                                                   image: UIImage(named: "learn"),
                                                   selectedImage: UIImage(named: "learn_1"))
        
        let bookScreen = BK000Screen()
        bookScreen.tabBarItem = ESTabBarItem.init(ExampleBouncesContentView(),
                                                  title: "Sách",
                                                  image: UIImage(named: "book"),
                                                  selectedImage: UIImage(named: "book_1"))
        
        let profileScreen = PR000Screen()
        profileScreen.tabBarItem = ESTabBarItem.init(ExampleBouncesContentView(),
                                                     title: "Cá nhân",
                                                     image: UIImage(named: "me"),
                                                     selectedImage: UIImage(named: "me_1"))
        
        self.viewControllers = [hm001, learnScreen, bookScreen, profileScreen]
        self.tabBar.backgroundColor = .white
        self.tabBar.layer.shadowColor = UIColor.black.cgColor
        self.tabBar.layer.shadowOpacity = 0.2
        self.tabBar.layer.shadowOffset = CGSize(width: 0, height: 4)
        self.tabBar.layer.shadowRadius = 10
        self.selectedViewController = learnScreen
    }
}
