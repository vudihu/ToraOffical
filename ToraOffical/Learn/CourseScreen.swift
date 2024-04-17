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
    @IBOutlet private weak var tableView: UITableView!
    private let courseCell = "CourseCell"
    var screenType: ScreenType = .n1Course
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupTableView()
    }
    
    private func setupUI() {
        courseNameLabel.text = screenType.title
        courseNameView.backgroundColor = UIColor(hexString: screenType.color)
        courseNameView.roundCorners(corners: [.bottomLeft, .topLeft], radius: 18)
    }
    
    private func setupTableView() {
        tableView.register(UINib(nibName: courseCell, bundle: nil), forCellReuseIdentifier: courseCell)
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

extension CourseScreen: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        9
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: courseCell) as! CourseCell
            cell.displayData(icon: "BookBookmark", title: "kaiwa")
            cell.delegate = self
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: courseCell) as! CourseCell
            cell.displayData(icon: "Clipboard", title: "Từ vựng")
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: courseCell) as! CourseCell
            cell.displayData(icon: "Note", title: "Ngữ pháp")
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: courseCell) as! CourseCell
            cell.displayData(icon: "Headphones", title: "Luyện nghe")
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: courseCell) as! CourseCell
            cell.displayData(icon: "bookClose", title: "JLPT")
            return cell
        case 5:
            let cell = tableView.dequeueReusableCell(withIdentifier: courseCell) as! CourseCell
            cell.displayData(icon: "BookOpen", title: "Bài giảng")
            return cell
        case 6:
            let cell = tableView.dequeueReusableCell(withIdentifier: courseCell) as! CourseCell
            cell.displayData(icon: "Translate", title: "Chữ Hán")
            return cell
        case 7:
            let cell = tableView.dequeueReusableCell(withIdentifier: courseCell) as! CourseCell
            cell.displayData(icon: "Microphone", title: "Luyện đọc")
            return cell
        case 8:
            let cell = tableView.dequeueReusableCell(withIdentifier: courseCell) as! CourseCell
            cell.displayData(icon: "PlayCircle", title: "Tổng hợp")
            return cell
        default:
            fatalError("Unhandled indexPath: \(indexPath)")
        }
    }
}

extension CourseScreen: CourseCellDelegate {
    func reloadTableView() {
        tableView.reloadData()
        tableView.beginUpdates()
        tableView.endUpdates()
    }
}
