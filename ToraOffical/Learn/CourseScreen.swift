//
//  CourseScreen.swift
//  ToraOffical
//
//  Created by Hung Vu on 12/04/2024.
//

import UIKit

class CourseScreen: UIViewController {
    
    enum ScreenType {
        case n5Course
        case n4Course
        case n3Course
        case n2Course
        case n1Course
        
        var title: String {
            switch self {
            case .n5Course:
                return "Khóa học N5"
            case .n4Course:
                return "Khóa học N4"
            case .n3Course:
                return "Khóa học N3"
            case .n2Course:
                return "Khóa học N2"
            case .n1Course:
                return "Khóa học N1"
            }
        }
        
        var color: String {
            switch self {
            case .n5Course:
                return "#33A2C5"
            case .n4Course:
                return "#ECA451"
            case .n3Course:
                return "#83C579"
            case .n2Course:
                return "#9F7FD1"
            case .n1Course:
                return "#5389B9"
            }
        }
    }
    
    @IBOutlet private weak var courseNameView: UIView!
    @IBOutlet private weak var courseNameLabel: UILabel!
    @IBOutlet private weak var collectionView: UICollectionView!
    private let courseCell = "CourseCell"
    var screenType: ScreenType = .n1Course
    var listCourse: [String] = []
    var listLession: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupCollectionView()
    }
    
    private func setupUI() {
        courseNameLabel.text = screenType.title
        courseNameView.backgroundColor = UIColor(hexString: screenType.color)
        courseNameView.roundCorners(corners: [.bottomLeft, .topLeft], radius: 18)
    }
    
    private func setupCollectionView() {
        collectionView.register(UINib(nibName: courseCell, bundle: nil), forCellWithReuseIdentifier: courseCell)
        if let collectionViewFlowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            collectionViewFlowLayout.minimumLineSpacing = 10
            collectionViewFlowLayout.minimumLineSpacing = 15
        }
        listCourse = ["aaa", "bbb", "ccc", "ddd"]
        listLession = ["Bai 1", "Bai 2", "bai 3"]
    }

    @IBAction func tapToBack(_ sender: Any) {
        if let tabbar = navigationController?.viewControllers.first(where: { $0 is MainTabbarViewController }) as? MainTabbarViewController {
            // Đặt selectedViewController của tabbar thành LearnScreen
            if let learnScreen = tabbar.viewControllers?.first(where: { $0 is LearnScreen }) {
                tabbar.selectedViewController = learnScreen
            }
            // Pop về MainTabbarViewController từ navigation stack
            navigationController?.popToViewController(tabbar, animated: false)
        }
    }
}

extension CourseScreen: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return listCourse.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listLession.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CourseCell", for: indexPath) as! CourseCell
        cell.lessionLabel.text = self.listLession[indexPath.item]
        return cell
    }
    
    
}
