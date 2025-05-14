//
//  MainTabBarViewController.swift
//  ToraOffical
//
//  Created by Hung Vu on 13/5/25.
//

import UIKit

class MainTabBarViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var tabbarBackgroundView: TabbarBackgroundView!
    @IBOutlet weak var menuTabBarView: MenuTabBarView!
    @IBOutlet weak var bottomView: UIView!
    
    // MARK: - View controllers
    private var viewControllers: [UIViewController] = []
    private var currentViewController: UIViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        setupTabbar()
        switchToTab(index: 0)
    }

    private func setupViewControllers() {
        let homeScreen = HomeScreen()
        let learnScreen = LN000Screen()
        let bookScreen = BK000Screen()

        viewControllers = [homeScreen, learnScreen, bookScreen]
    }

    private func setupTabbar() {
        bottomView.backgroundColor = #colorLiteral(red: 0.8509803922, green: 0.1254901961, blue: 0.06666666667, alpha: 1)
        menuTabBarView.delegate = self
        let icons: [TabbarObject] = [
            .home,
            .learn,
            .book
        ]
        configureTabbar(with: icons)
    }
    
    private func configureTabbar(with icons: [TabbarObject]) {
        menuTabBarView.tabIcons = icons
        tabbarBackgroundView.tabbarTotal = icons.count
    }

    private func switchToTab(index: Int) {
        guard index >= 0, index < viewControllers.count else { return }

        // Remove current
        if let currentVC = currentViewController {
            currentVC.willMove(toParent: nil)
            currentVC.view.removeFromSuperview()
            currentVC.removeFromParent()
        }

        // Add new
        let selectedVC = viewControllers[index]
        addChild(selectedVC)
        selectedVC.view.frame = containerView.bounds
        selectedVC.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        containerView.addSubview(selectedVC.view)
        selectedVC.didMove(toParent: self)
        currentViewController = selectedVC

        // Update tabbar UI
        tabbarBackgroundView.updateTabIndex(index)
        menuTabBarView.updateCurrentTab(index, needReload: true)
    }
}

extension MainTabBarViewController: MenuTabBarViewDelegate {
    func didChangeTab(tabIndex: Int, oldIndex: Int) {
        switchToTab(index: tabIndex)
    }
}
