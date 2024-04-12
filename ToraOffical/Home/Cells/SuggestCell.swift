//
//  SuggestCell.swift
//  ToraOffical
//
//  Created by Hung Vu on 07/04/2024.
//

import UIKit

class SuggestCell: UITableViewCell {
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func displaySuggest(title: String) {
        titleLabel.text = title
        let suggestData = [("icon-kaiwa", "kaiwa", "15(videos)"),
                           ("icon-grama", "Ngữ pháp", "30(videos)"),
                           ("icon-voca", "Từ vựng", "125(videos)")]
        
        var xOffset: CGFloat = 0
        for (_, data) in suggestData.enumerated() {
            let suggestView = SuggestView(frame: CGRect(x: xOffset, y: 0, width: 124, height: 124))
            suggestView.suggestData(icon: UIImage(named: data.0), title: data.1, number: data.2)
            suggestView.delegate = self
            collectionView.addSubview(suggestView)
            xOffset += suggestView.frame.width + 16
        }
        collectionView.contentSize = CGSize(width: xOffset - 16, height: collectionView.frame.height)
    }
    
    func displayGrammar(title: String) {
        titleLabel.text = title
        let gramarData = ["icon-kaiwa", "icon-grama", "icon-voca"]

        var xOffset: CGFloat = 0
        for (_, _) in gramarData.enumerated() {
            let detailView = SuggestView(frame: CGRect(x: xOffset, y: 0, width: 124, height: 124))
            detailView.detailData()
            detailView.delegate = self
            collectionView.addSubview(detailView)
            xOffset += detailView.frame.width + 16
        }
        collectionView.contentSize = CGSize(width: xOffset - 16, height: collectionView.frame.height)
    }
}
