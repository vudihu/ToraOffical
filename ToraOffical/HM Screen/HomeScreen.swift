//
//  HomeScreen.swift
//  ToraOffical
//
//  Created by Hung Vu on 30/3/25.
//

import UIKit

final class HomeScreen: UIViewController {
    @IBOutlet private weak var sayHiTitle: UILabel!
    @IBOutlet private weak var tableView: UITableView!
    
    private let presenter: HomeContract.Presenter = HomePresenter(model: HomeModel())
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        self.presenter.configData()
    }
    
    private func setupTableView() {
        tableView.register(UINib(nibName: "SuggestCell", bundle: nil), forCellReuseIdentifier: "SuggestCell")
        tableView.register(UINib(nibName: "EmptyCell", bundle: nil), forCellReuseIdentifier: "EmptyCell")
    }

}

// MARK: Cấu hình UITableViewDataSource, UITableViewDelegate
extension HomeScreen: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.cells.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellType = presenter.cells[indexPath.row]
        switch cellType {
        case .content(let title, let videos):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "SuggestCell", for: indexPath) as? SuggestCell else {
                return UITableViewCell()
            }
            cell.updateData(title: title, videos: videos)
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

