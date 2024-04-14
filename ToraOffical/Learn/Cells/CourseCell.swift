//
//  CourseCell.swift
//  ToraOffical
//
//  Created by Hung Vu on 13/04/2024.
//

import UIKit

class CourseCell: UITableViewCell {
    @IBOutlet private weak var detailCourseView: UIView!
    @IBOutlet private weak var iconImage: UIImageView!
    @IBOutlet private weak var detailTitle: UILabel!
    @IBOutlet private weak var collectionView: UICollectionView!
    @IBOutlet private weak var heightCollectionConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
        setupCollectionView()
    }
    
    private func setupUI() {
        detailCourseView.layer.cornerRadius = 12
        detailCourseView.backgroundColor = .white
        detailCourseView.layer.shadowColor = UIColor.black.cgColor
        detailCourseView.layer.shadowOpacity = 0.2
        detailCourseView.layer.shadowOffset = CGSize(width: 0, height: 1)
        detailCourseView.layer.shadowRadius = 4
    }
    
    private func setupCollectionView() {
        let detailData = ["Bài 1", "Bài 2", "Bài 3", "Bài 4", "Bài 5",
                          "Bài 6", "Bài 7", "Bài 8", "Bài 9", "Bài 10",
                          "Bài 11", "Bài 12", "Bài 13", "Bài 14", "Bài 15"]
        
//        let numberOfColumns: CGFloat = 4
//        let cellWidth = (collectionView.frame.width - 16 * (numberOfColumns - 1)) / numberOfColumns
//        let cellHeight: CGFloat = cellWidth
        
        var xOffset: CGFloat = 0
        var yOffset: CGFloat = 0
        for (_, data) in detailData.enumerated() {
            let detailView = DetailView(frame: CGRect(x: xOffset, y: yOffset, width: 60, height: 60))
            detailView.displayData(title: data)
            collectionView.addSubview(detailView)
            
            xOffset += 60 + (collectionView.frame.width - 60 * 4) / 3
            if xOffset + 60 > collectionView.frame.width {
                xOffset = 0
                yOffset += 60 + (collectionView.frame.width - 60 * 4) / 3
            }
        }
        
        let contentHeight = yOffset
        collectionView.contentSize = CGSize(width: collectionView.frame.width, height: contentHeight)
        heightCollectionConstraint.constant = contentHeight
    }
    
    func displayData(icon: String, title: String ) {
        iconImage.image = UIImage(named: icon)
        detailTitle.text = title
    }
    
}
