//
//  TabbarObject.swift
//  ToraOffical
//
//  Created by Hung Vu on 05/03/2025.
//

import UIKit

enum TabbarObject: Int {
    case home
    case learn
    case book
    
    // MARK: - common
    var name: String {
        switch self {
        case .home:
            return "Trang chủ"
        case .learn:
            return "Khóa học"
        case .book:
            return "Sách"
        }
    }
    
    // MARK: - active state
    var activeImage: UIImage {
        switch self {
        case .home:
            return #imageLiteral(resourceName: "home_1")
        case .learn:
            return #imageLiteral(resourceName: "learn_1")
        case .book:
            return #imageLiteral(resourceName: "book_1")
        }
    }
    
    var activeColor: UIColor {
        return #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1) //#132D48
    }
    
    var activeFont: UIFont {
        return UIFont.boldSystemFont(ofSize: 11)
    }
    
    // MARK: - inactive state
    var inactiveImage: UIImage {
        switch self {
        case .home:
            return #imageLiteral(resourceName: "home").withRenderingMode(.alwaysTemplate)
        case .learn:
            return #imageLiteral(resourceName: "learn").withRenderingMode(.alwaysTemplate)
        case .book:
            return #imageLiteral(resourceName: "book").withRenderingMode(.alwaysTemplate)
        }
    }

    
    var kernvalue: CGFloat {
        switch self {
        case .home:
            return 0
        case .learn:
            return 0
        case .book:
            return 0
        }
    }
    
    var inactiveColor: UIColor {
        return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) //#FFFFFF
    }
    
    var inactiveFont: UIFont {
        return UIFont.boldSystemFont(ofSize: 11)
    }
    
    static func getTabbarColor() -> UIColor {
        let tabbarColor: UIColor
        tabbarColor = Constant.tabbarColor
        return tabbarColor
    }
}

enum TabbarState {
    case active
    case inactive
}
