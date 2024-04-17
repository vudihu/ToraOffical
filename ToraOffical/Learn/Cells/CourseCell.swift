//
//  CourseCell.swift
//  ToraOffical
//
//  Created by Hung Vu on 13/04/2024.
//

import UIKit

protocol CourseCellDelegate: AnyObject {
    func reloadTableView()
}

class CourseCell: UITableViewCell {
    @IBOutlet private weak var stackView: UIStackView!
    @IBOutlet private weak var detailCourseView: UIView!
    @IBOutlet private weak var iconImage: UIImageView!
    @IBOutlet private weak var detailTitle: UILabel!
    @IBOutlet private weak var collectionView: UICollectionView!
    @IBOutlet private weak var heightCollectionConstraint: NSLayoutConstraint!
    @IBOutlet private weak var bgCollectionView: UIView!
    
    var delegate: CourseCellDelegate?
    
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
        bgCollectionView.isHidden = true
        let tapGuesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        detailCourseView.addGestureRecognizer(tapGuesture)
    }
    
    @objc func handleTap() {
        bgCollectionView.isHidden = false
    }
    
    private func setupCollectionView() {
        let detailData = ["Bài 1", "Bài 2", "Bài 3", "Bài 4", "Bài 5",
                              "Bài 6", "Bài 7", "Bài 8", "Bài 9", "Bài 10",
                              "Bài 11", "Bài 12", "Bài 13", "Bài 14", "Bài 15"]
            
            let itemWidth: CGFloat = 70
            let spacing = (collectionView.frame.width - (itemWidth * 4)) / 3
            
            var xOffset: CGFloat = 0
            var yOffset: CGFloat = 0
            for (_, data) in detailData.enumerated() {
                let detailView = DetailView(frame: CGRect(x: xOffset, y: yOffset, width: itemWidth, height: 70))
                detailView.displayData(title: data)
                collectionView.addSubview(detailView)
                
                xOffset += itemWidth + spacing
                if xOffset + itemWidth > collectionView.frame.width {
                    xOffset = 0
                    yOffset += 70 + spacing
                }
            }
            
        let contentHeight = yOffset + 70
        collectionView.contentSize = CGSize(width: collectionView.frame.width, height: contentHeight)
        heightCollectionConstraint.constant = contentHeight
        self.layoutIfNeeded()
        delegate?.reloadTableView()
    }
    
    func displayData(icon: String, title: String ) {
        iconImage.image = UIImage(named: icon)
        detailTitle.text = title
    }
    
}
