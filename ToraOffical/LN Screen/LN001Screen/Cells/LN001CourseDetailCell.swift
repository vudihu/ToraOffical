//
//  LN001CourseDetailCell.swift
//  ToraOffical
//
//  Created by Hung Vu on 23/5/25.
//

import UIKit

class LN001CourseDetailCell: UITableViewCell {
    @IBOutlet private weak var iconImage: UIImageView!
    @IBOutlet private weak var titleImage: UILabel!
    @IBOutlet private weak var iconExpandCollapse: UIImageView!
    @IBOutlet private weak var collectionView: UICollectionView!
    @IBOutlet private weak var expandCollapseView: UIView!
    @IBOutlet private weak var titleView: UIView!
    @IBOutlet private weak var heightConstraintExpandCollapse: NSLayoutConstraint!
    
    private var isExpand: Bool = false
    var didToggleExpand: (() -> Void)? // thêm biến callback
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    private func setupUI() {
        collectionView.register(UINib(nibName: DetailCell.identifier, bundle: nil), forCellWithReuseIdentifier: DetailCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        [titleView, expandCollapseView].forEach {
            $0.layer.cornerRadius = 8
        }
        titleImage.font = UIFont(name: "SFRounded-Bold", size: 16)
        heightConstraintExpandCollapse.constant = 0
        isExpand = false
        iconExpandCollapse.image = UIImage(systemName: "chevron.down")
        iconExpandCollapse.tintColor = .label
        iconExpandCollapse.transform = CGAffineTransform.identity
    }
    
    func updateData(iconCourse: String, title: String) {
        iconImage.image = UIImage(named: iconCourse)
        titleImage.text = title
        collectionView.reloadData()
    }
    private func calculateCollectionHeight() -> CGFloat {
        let itemHeight: CGFloat = 30
        let itemsPerRow: CGFloat = 4
        let spacing: CGFloat = 8
        let totalItems = 12
        
        let rows = ceil(CGFloat(totalItems) / itemsPerRow)
        let totalSpacing = (rows - 1) * spacing
        let height = rows * itemHeight + totalSpacing
        return height
    }

    
    @IBAction func tapToExpandCourse(_ sender: Any) {
        isExpand.toggle()
        expandCollapseView.isHidden = !isExpand
        heightConstraintExpandCollapse.constant = isExpand ? calculateCollectionHeight() : 0
        UIView.animate(withDuration: 0.3) {
            self.iconExpandCollapse.transform = self.isExpand
            ? CGAffineTransform(rotationAngle: .pi)
            : CGAffineTransform.identity
            
            self.layoutIfNeeded()
            }
        
        didToggleExpand?()
    }
}

extension LN001CourseDetailCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: DetailCell = collectionView.dequeueReusableCell(withReuseIdentifier: DetailCell.identifier, for: indexPath) as! DetailCell
        cell.setupDataLN001(number: "1")
        return cell
    }
}

extension LN001CourseDetailCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 60, height: 30)
    }
}
