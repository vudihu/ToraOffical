//
//  HomeScreen.swift
//  ToraOffical
//
//  Created by Hung Vu on 16/03/2024.
//

import UIKit

class HomeScreen: UIViewController {
    @IBOutlet private weak var tableView: UITableView!
    private let imageCell: String = "ImageCell"
    private let suggestCell: String = "SuggestCell"
    
    enum CellType {
        case image
        case suggest
    }
    
    var cellType: CellType = .suggest
    
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
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: imageCell) as! ImageCell
            cell.delegate = self
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: suggestCell) as! SuggestCell
            cell.displaySuggest(title: "Gợi ý")
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: suggestCell) as! SuggestCell
            cell.displayGrammar(title: "Tổng hợp mẫu câu N5 - N1")
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: suggestCell) as! SuggestCell
            cell.displayGrammar(title: "Tổng hợp phản xạ Tiếng Nhật N5")
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: suggestCell) as! SuggestCell
            cell.displayGrammar(title: "Tổng hợp phản xạ Tiếng Nhật N4")
            return cell
        default:
            fatalError("Unhandled indexPath: \(indexPath)")
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("HHH")
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
    func tapToViewSuggest(tag: Int) {
        var linkYT: String = "https://www.youtube.com/@trungtamtiengnhattora/videos"
        switch tag {
        case 0:
            linkYT = "https://www.youtube.com/watch?v=QltU6cIjQHA&t=22s"
        case 1:
            linkYT = "https://www.youtube.com/watch?v=x1vPSVmiUlg"
        case 2:
            linkYT = "https://www.youtube.com/watch?v=9wVgvG8GygU"
        default:
            break
            
        }
        guard let url = URL(string: linkYT) else {
            return
        }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    func tapToViewDetail(tag: Int) {
        guard let url = URL(string: "https://www.youtube.com/@trungtamtiengnhattora/videos") else {
            return
        }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
}
