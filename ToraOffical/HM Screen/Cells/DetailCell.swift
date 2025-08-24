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

final class DetailCell: UICollectionViewCell {

    @IBOutlet private weak var selectView: UIView!
    @IBOutlet private weak var thumbnailImageView: UIImageView!
    @IBOutlet private weak var courseButton: UIButton!
    static let identifier: String = "DetailCell"
    override func awakeFromNib() {
        super.awakeFromNib()
        selectView.layer.cornerRadius = 8
        thumbnailImageView.layer.cornerRadius = 8
    }
    
    func setupData(with video: YouTubeVideo) {
        if let url = video.thumbnailURL {
            // Dùng thư viện SDWebImage hoặc Kingfisher để load ảnh
            thumbnailImageView.sd_setImage(with: url)
        }
    }
    
    func setupDataLN001(number: String) {
        courseButton.titleLabel?.font = UIFont(name: "SFRounded-Bold", size: 18)
        courseButton.titleLabel?.text = "Bài\(number)"
    }
    
    @IBAction func tapToSelectItem(_ sender: Any) {
        
    }
}
