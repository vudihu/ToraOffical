//
//  HomeScreen.swift
//  ToraOffical
//
//  Created by Hung Vu on 16/03/2024.
//

import UIKit

class HomeScreen: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    @IBOutlet private weak var headerView: UIView!
    private let imageCell: String = "ImageCell"
    private let suggestCell: String = "SuggestCell"
    
    enum CellType {
        case image
        case suggest
        case allN4N5
        case suggestN5
        case suggestN4
    }
    var listCell: [CellType] = [.image, .suggest, .allN4N5, .suggestN4, .suggestN5]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }

    private func setupTableView() {
        tableView.register(UINib(nibName: imageCell, bundle: nil), forCellReuseIdentifier: imageCell)
        tableView.register(UINib(nibName: suggestCell, bundle: nil), forCellReuseIdentifier: suggestCell)
    }
}

extension HomeScreen: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listCell.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellSuggest = tableView.dequeueReusableCell(withIdentifier: suggestCell) as! SuggestCell
        let cellImage = tableView.dequeueReusableCell(withIdentifier: imageCell) as! ImageCell
        let list = listCell[indexPath.row]
        switch list {
        case .image:
            let cellImage = tableView.dequeueReusableCell(withIdentifier: imageCell) as! ImageCell
            cellImage.delegate = self
            return cellImage
        case .suggest:
            cellSuggest.displaySuggest(title: "Gợi ý")
        case .allN4N5:
            cellSuggest.displayGrammar(title: "Tổng hợp mẫu câu N5 - N1")
        case .suggestN5:
            cellSuggest.displayGrammar(title: "Tổng hợp phản xạ Tiếng Nhật N5")
        case .suggestN4:
            cellSuggest.displayGrammar(title: "Tổng hợp phản xạ Tiếng Nhật N4")
        }
        return cellSuggest
    }
}

extension HomeScreen: ImageCellDelegate {
    func actionTap() {
        guard let url = URL(string: "https://www.youtube.com/@trungtamtiengnhattora/videos") else {
            return
        }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
}

extension SuggestCell: SuggestViewDelegate {
    func tapToViewDetail(list: ListSuggest) {
        guard let url = URL(string: "https://www.youtube.com/@trungtamtiengnhattora/videos") else {
            return
        }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    func tapToViewSuggest(list: ListSuggest) {
        var linkYT: String = ""
        switch list {
        case .kaiwa:
            linkYT = "https://www.youtube.com/watch?v=QltU6cIjQHA&t=22s"
        case .words:
            linkYT = "https://www.youtube.com/watch?v=x1vPSVmiUlg"
        case .grammar:
            linkYT = "https://www.youtube.com/watch?v=9wVgvG8GygU"
        }
        guard let url = URL(string: linkYT) else {
            return
        }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
}
