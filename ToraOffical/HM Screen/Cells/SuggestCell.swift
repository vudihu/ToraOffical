//
//  SuggestCell.swift
//  ToraOffical
//
//  Created by Hung Vu on 07/04/2024.
//

import UIKit

final class SuggestCell: UITableViewCell {
    
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var collectionView: UICollectionView!
    
    private var videos: [YouTubeVideo] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    func updateData(title: String, videos: [YouTubeVideo]) {
        self.videos = videos
        titleLabel.text = title
        collectionView.reloadData()
    }
    
    private func setupUI() {
        collectionView.register(UINib(nibName: DetailCell.identifier, bundle: nil), forCellWithReuseIdentifier: DetailCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension SuggestCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        videos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: DetailCell = collectionView.dequeueReusableCell(withReuseIdentifier: DetailCell.identifier, for: indexPath) as! DetailCell
        let video = videos[indexPath.item]
        cell.setupData(with: video)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedVideo = videos[indexPath.item]
        if let youtubeURL = selectedVideo.youtubeURL {
            UIApplication.shared.open(youtubeURL)
        }
    }
}

extension SuggestCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 170, height: 95)
    }
}
