//
//  LN001Screen.swift
//  ToraOffical
//
//  Created by Hung Vu on 12/04/2024.
//

import UIKit

//enum ScreenType {
//    case n5Course
//    case n4Course
//    case n3Course
//    case n2Course
//    case n1Course
//
//    var title: String {
//        switch self {
//        case .n5Course:
//            return "Khóa học N5"
//        case .n4Course:
//            return "Khóa học N4"
//        case .n3Course:
//            return "Khóa học N3"
//        case .n2Course:
//            return "Khóa học N2"
//        case .n1Course:
//            return "Khóa học N1"
//        }
//    }
//
//    var color: String {
//        switch self {
//        case .n5Course:
//            return "#33A2C5"
//        case .n4Course:
//            return "#ECA451"
//        case .n3Course:
//            return "#83C579"
//        case .n2Course:
//            return "#9F7FD1"
//        case .n1Course:
//            return "#5389B9"
//        }
//    }
//}

class LN001Screen: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
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
    
    enum ListCourse {
        case kaiwa
        case word
        case grammar
        case listen
        case JLPT
        case learn
        case han
        case read
        case all
    }
    
    @IBOutlet private weak var courseNameView: UIView!
    @IBOutlet private weak var courseNameLabel: UILabel!
    @IBOutlet private weak var tableView: UITableView!
    private let tableViewCourseCell = "TableViewCourseCell"
    var screenType: ScreenType = .n1Course
    var listCourse: [ListCourse] = [.kaiwa, .word, .grammar, .listen, .JLPT, .learn, .han, .read, .all]
    var listTitle: [String]  = ["kaiwa", "Từ vựng", "Ngữ pháp", "Luyện nghe", "JLPT", "Bài giảng", "Chữ Hán", "Luyện đọc", "Tổng hợp"]
    var lessons: [[String]] =  [["Bài 1", "Bài 2"],
                                ["Bài 1", "Bài 2", "Bài 3"],
                                ["Bài 1", "Bài 2"],
                                ["Bài 1", "Bài 2"],
                                ["Bài 1", "Bài 2", "Bài 3"],
                                ["Bài 1", "Bài 2", "Bài 3", "Bài 4"],
                                ["Bài 1", "Bài 2"],
                                ["Bài 1", "Bài 2"],
                                ["Bài 1", "Bài 2", "Bài 3"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupTableView()
    }
    
    private func setupUI() {
        courseNameLabel.text = screenType.title
        courseNameView.backgroundColor = UIColor(hexString: screenType.color)
        courseNameView.roundCorners(corners: [.bottomLeft, .topLeft], radius: 18)
        tableView.layer.cornerRadius = 8
    }
    
    private func setupTableView() {
        tableView.register(UINib(nibName: tableViewCourseCell, bundle: nil), forCellReuseIdentifier: tableViewCourseCell)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return listCourse.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = listCourse[section]
        switch section {
        case .kaiwa:
            return lessons[0].count
        case .word:
            return lessons[1].count
        case .grammar:
            return lessons[2].count
        case .listen:
            return lessons[3].count
        case .JLPT:
            return lessons[4].count
        case .learn:
            return lessons[5].count
        case .han:
            return lessons[6].count
        case .read:
            return lessons[7].count
        case .all:
            return lessons[8].count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tableViewCourseCell, for: indexPath) as! TableViewCourseCell
        cell.delegate = self
        cell.titleLabel?.text = lessons[indexPath.section][indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return listTitle[section]
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 52
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let headerView = view as? UITableViewHeaderFooterView else { return }
        headerView.contentView.backgroundColor = UIColor.systemGray6
        headerView.contentView.layer.cornerRadius = 8
        if let titleLabel = headerView.textLabel {
            titleLabel.font = UIFont(name: "SFRounded-Bold", size: 18)
            titleLabel.textColor = UIColor(hexString: screenType.color)
        }
    }
    
    

    
    @IBAction func tapToBack(_ sender: Any) {
        if let tabbarContainer = navigationController?.viewControllers.first(where: { $0 is MainTabBarViewController }) as? MainTabBarViewController {
            navigationController?.popToViewController(tabbarContainer, animated: false)
        }
    }
}

extension LN001Screen: TableViewCourseCellDelegate {
    func tapAction() {
        let videoScreen = LN002Screen()
        navigationController?.pushViewController(videoScreen, animated: true)
    }
}
