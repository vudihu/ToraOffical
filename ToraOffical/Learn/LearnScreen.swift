//
//  LearnScreen.swift
//  ToraOffical
//
//  Created by Hung Vu on 16/03/2024.
//

import UIKit

class LearnScreen: UIViewController {
    @IBOutlet private weak var scrollView: UIScrollView!
    @IBOutlet private weak var headerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        let cardData = [("fuji", "#33A2C5", "N5", "Khóa học N5", "videos"),
                        ("shushi", "#ECA451", "N4", "Khóa học N4", "videos"),
                        ("noodle-icon", "#83C579", "N3", "Khóa học N3", "videos"),
                        ("flag-icon", "#9F7FD1", "N2", "Khóa học N1", "videos"),
                        ("gate-icon", "#5389B9", "N1", "Khóa học N1", "videos")]
        var yOffset: CGFloat = 16
        for data in cardData {
            let cardView = CardView(frame: CGRect(x: (scrollView.frame.width - scrollView.frame.width * 327/375)/2, y: yOffset, width: scrollView.frame.width * 327/375, height: 240))
            cardView.setupDisplay(bgColor: UIColor(hexString: data.1), image: UIImage(named: data.0), courseNumber: data.2, courseName: data.3, number: data.4)
            cardView.delegate = self
            scrollView.addSubview(cardView)
            yOffset += cardView.frame.height + 32
            switch data.2 {
            case "N5":
                cardView.cardType = .n5Card
            case "N4":
                cardView.cardType = .n4Card
            case "N3":
                cardView.cardType = .n3Card
            case "N2":
                cardView.cardType = .n2Card
            case "N1":
                cardView.cardType = .n1Card
            default:
                break
            }
        }
        scrollView.contentSize = CGSize(width: scrollView.frame.width, height: yOffset + 16)
    }
}

extension LearnScreen: CardViewDelegate {
    func tapCardView(cardType: CardType) {
        var screenType: CourseScreen.ScreenType
        switch cardType {
        case .n5Card:
            screenType = .n5Course
        case .n4Card:
            screenType = .n4Course
        case .n3Card:
            screenType = .n3Course
        case .n2Card:
            screenType = .n2Course
        case .n1Card:
            screenType = .n1Course
        }
        let courseScreen = CourseScreen()
        courseScreen.screenType = screenType
        navigationController?.pushViewController(courseScreen, animated: true)
    }
}
