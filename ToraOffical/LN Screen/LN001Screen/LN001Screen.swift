//
//  LN001Screen.swift
//  ToraOffical
//
//  Created by Hung Vu on 12/04/2024.
//

import UIKit

class LN001Screen: UIViewController {
    
    @IBOutlet private weak var courseNameView: UIView!
    @IBOutlet private weak var courseNameLabel: UILabel!
    @IBOutlet private weak var tableView: UITableView!
    private let presenter: LN001Contract.Presenter = LN001Presenter(model: LN001Model())
    var screenType: ScreenType = .n1Course
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupTableView()
        presenter.configData()
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    private func setupUI() {
        courseNameLabel.text = screenType.title
        courseNameView.backgroundColor = UIColor(hexString: screenType.color)
        courseNameView.roundCorners(corners: [.bottomLeft, .topLeft], radius: 18)
        tableView.layer.cornerRadius = 8
    }
    
    private func setupTableView() {
        tableView.showsVerticalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
        tableView.register(UINib(nibName: "LN001CourseDetailCell", bundle: nil), forCellReuseIdentifier: "LN001CourseDetailCell")
        tableView.register(UINib(nibName: "EmptyCell", bundle: nil), forCellReuseIdentifier: "EmptyCell")
    }
    
    @IBAction func tapToBack(_ sender: Any) {
        if let tabbarContainer = navigationController?.viewControllers.first(where: { $0 is MainTabBarViewController }) as? MainTabBarViewController {
            navigationController?.popToViewController(tabbarContainer, animated: false)
        }
    }
}

extension LN001Screen: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellType = presenter.cells[indexPath.row]
        switch cellType {
        case .detail(let icon, let title):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "LN001CourseDetailCell", for: indexPath) as? LN001CourseDetailCell else {
                return UITableViewCell()
            }
            cell.updateData(iconCourse: icon, title: title)
            cell.didToggleExpand = { [weak self] in
                guard let self = self else { return }
                self.tableView.beginUpdates()
                self.tableView.endUpdates()
            }
            return cell
        case .empty(let height):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "EmptyCell", for: indexPath) as? EmptyCell else {
                return UITableViewCell()
            }
            cell.configSpace(height: height)
            return cell
        }
    }
}
