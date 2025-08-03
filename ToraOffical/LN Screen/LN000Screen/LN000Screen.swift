//
//  LN000Screen.swift
//  ToraOffical
//
//  Created by Hung Vu on 16/03/2024.
//

import UIKit

class LN000Screen: UIViewController {
    @IBOutlet private weak var headerView: UIView!
    @IBOutlet private weak var tableView: UITableView!
    
    private let presenter: LN000Contract.Presenter = LN000Presenter(model: LN000Model())
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        self.presenter.configData()
    }
    
    private func setupTableView() {
        tableView.register(UINib(nibName: "LearnCardCell", bundle: nil), forCellReuseIdentifier: "LearnCardCell")
        tableView.register(UINib(nibName: "EmptyCell", bundle: nil), forCellReuseIdentifier: "EmptyCell")
    }

}

// MARK: Cấu hình UITableViewDataSource, UITableViewDelegate
extension LN000Screen: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.cells.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellType = presenter.cells[indexPath.row]
        switch cellType {
        case .content(let title, let imageName, let backgroundColor):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "LearnCardCell", for: indexPath) as? LearnCardCell else {
                return UITableViewCell()
            }
            cell.setupData(title: title, imageName: imageName, backgroundColor: backgroundColor)
            cell.delegate = self
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

extension LN000Screen: LearnCardCellDelegate {
    func tapToLearnDetail() {
        let ln001Screen = LN001Screen()
        navigationController?.pushViewController(ln001Screen, animated: true)
    }
}
