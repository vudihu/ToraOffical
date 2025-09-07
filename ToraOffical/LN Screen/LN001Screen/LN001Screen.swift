//
//  LN001Screen.swift
//  ToraOffical
//
//  Created by Hung Vu on 12/04/2024.
//

import UIKit

final class LN001Screen: BaseViewController {
    
    @IBOutlet private weak var courseNameView: UIView!
    @IBOutlet private weak var courseNameLabel: UILabel!
    @IBOutlet private weak var tableView: UITableView!
    private let presenter: LN001Contract.Presenter = LN001Presenter(model: LN001Model())
    var screenType: CourseType = .n1Course
    
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
        courseNameView.backgroundColor = UIColor(hexString: screenType.backgroundColor)
        courseNameView.roundCorners(corners: [.bottomLeft, .topLeft], radius: 18)
        tableView.layer.cornerRadius = 8
    }
    
    private func setupTableView() {
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = true
        tableView.register(UINib(nibName: "LN001CourseDetailCell", bundle: nil), forCellReuseIdentifier: "LN001CourseDetailCell")
        tableView.register(UINib(nibName: "EmptyCell", bundle: nil), forCellReuseIdentifier: "EmptyCell")
    }
    
    @IBAction func tapToBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}

extension LN001Screen: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellType = presenter.cells[indexPath.row]
        switch cellType {
        case .detail(let content):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "LN001CourseDetailCell", for: indexPath) as? LN001CourseDetailCell else {
                return UITableViewCell()
            }
            cell.updateData(courseType: screenType, contentType: content)
            cell.didToggleExpand = { [weak self] in
                guard let self = self else { return }
                self.tableView.beginUpdates()
                self.tableView.endUpdates()
            }
            cell.delegate = self
            cell.sectionIndex = indexPath.section
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

extension LN001Screen: LN001CourseDetailCellDelegate {
    func courseDetailCell(didTapItemAt indexPath: IndexPath, inSection section: Int) {
        let detailVC = LN002Screen()
        navigationController?.pushViewController(detailVC, animated: true)
    }
}
