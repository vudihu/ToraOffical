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
        //Home
        let homeScreen = HomeScreen()
        let homeNavi = UINavigationController(rootViewController: homeScreen)
        homeScreen.tabBarItem = UITabBarItem(title: "Trang chủ", image: .remove, tag: 0)
        
        //Learn
        let learnScreen = LearnScreen()
        let learnNavi = UINavigationController(rootViewController: learnScreen)
        learnScreen.tabBarItem = UITabBarItem(title: "Học ngay", image: .actions, tag: 1)
        
        //Book
        let bookScreen = BookScreen()
        let bookNavi = UINavigationController(rootViewController: bookScreen)
        bookScreen.tabBarItem = UITabBarItem(title: "Sách", image: .actions, tag: 2)
        
        //Profile
        let profileScreen = ProfileScreen()
        let profileNavi = UINavigationController(rootViewController: profileScreen)
        profileScreen.tabBarItem = UITabBarItem(title: "Tài khoản", image: .actions, tag: 3)
        
        let tabbarController = UITabBarController()
        tabbarController.viewControllers = [homeNavi, learnNavi, bookNavi, profileNavi]
        tabbarController.tabBar.backgroundColor = .white
    }

}
