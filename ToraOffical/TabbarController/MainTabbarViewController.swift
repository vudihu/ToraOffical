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
        let homeScreen = HomeScreen()
        homeScreen.tabBarItem = ESTabBarItem.init(ExampleBouncesContentView(),
                                                  title: "Trang chủ",
                                                  image: UIImage(named: "home"),
                                                  selectedImage: UIImage(named: "home_1"))
        
        let learnScreen = LearnScreen()
        learnScreen.tabBarItem = ESTabBarItem.init(ExampleBouncesContentView(),
                                                   title: "Học ngay",
                                                   image: UIImage(named: "learn"),
                                                   selectedImage: UIImage(named: "learn_1"))
        
        let bookScreen = BookScreen()
        bookScreen.tabBarItem = ESTabBarItem.init(ExampleBouncesContentView(),
                                                  title: "Sách",
                                                  image: UIImage(named: "book"),
                                                  selectedImage: UIImage(named: "book_1"))
        
        let profileScreen = ProfileScreen()
        profileScreen.tabBarItem = ESTabBarItem.init(ExampleBouncesContentView(),
                                                     title: "Cá nhân",
                                                     image: UIImage(named: "me"),
                                                     selectedImage: UIImage(named: "me_1"))
        
        self.viewControllers = [homeScreen, learnScreen, bookScreen, profileScreen]
        self.tabBar.backgroundColor = .white
        self.selectedViewController = homeScreen
    }
}
