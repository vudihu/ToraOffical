//
//  DetailCell.swift
//  ToraOffical
//
//  Created by Hung Vu on 20/5/25.
//

import UIKit
import Kingfisher
import SDWebImage

struct YouTubeVideo {
    let videoId: String
    
    var thumbnailURL: URL? {
        return URL(string: "https://img.youtube.com/vi/\(videoId)/mqdefault.jpg")
    }
    
    var youtubeURL: URL? {
        return URL(string: "https://www.youtube.com/watch?v=\(videoId)")
    }
}

protocol DetailCellDelegate: NSObjectProtocol {
    func tapSelectItem(number: String)
}

final class DetailCell: UICollectionViewCell {

    @IBOutlet private weak var selectView: UIView!
    @IBOutlet private weak var thumbnailImageView: UIImageView!
    @IBOutlet private weak var courseButton: UIButton!
    @IBOutlet private weak var courseNumberLabel: UILabel!
    
    weak var delegate: DetailCellDelegate?
    var lessonNbr: String = ""
    static let identifier: String = "DetailCell"
    override func awakeFromNib() {
        super.awakeFromNib()
        selectView.layer.cornerRadius = 8
        thumbnailImageView.layer.cornerRadius = 8
    }
    
    func setupData(with video: YouTubeVideo) {
        courseNumberLabel.isHidden = true
        if let url = video.thumbnailURL {
            // Dùng thư viện SDWebImage hoặc Kingfisher để load ảnh
            thumbnailImageView.sd_setImage(with: url)
        }
    }
    
    func setupDataLN001(number: String) {
        lessonNbr = number
        courseNumberLabel.font = UIFont(name: "SFRounded-Bold", size: 14)
        courseNumberLabel.text = "Bài \(number)"
    }
    
    @IBAction func tapToSelectItem(_ sender: Any) {
        delegate?.tapSelectItem(number: lessonNbr)
    }
}
