//
//  LearnScreen.swift
//  ToraOffical
//
//  Created by Hung Vu on 16/03/2024.
//

import UIKit

class LearnScreen: UIViewController {
    @IBOutlet private weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        let cardData = [("gate-icon", "#9F7FD1", "N5", "Khóa học N5", "678"),
                        ("noodle-icon", "#83C579", "N4", "Khóa học N4", "123"),
                        ("flag-icon", "#5389B9", "N3", "Khóa học N3", "123")]
        
        var yOffset: CGFloat = 16
        for data in cardData {
            let cardView = CardView(frame: CGRect(x: (scrollView.frame.width - scrollView.frame.width * 327/375)/2, y: yOffset, width: scrollView.frame.width * 327/375, height: 240))
            cardView.setupDisplay(bgColor: UIColor(hexString: data.1), image: UIImage(named: data.0), courseNumber: data.2, courseName: data.3, number: data.4)
            scrollView.addSubview(cardView)
            yOffset += cardView.frame.height + 32
        }
        
        scrollView.contentSize = CGSize(width: scrollView.frame.width, height: yOffset + 16)
    }


}
