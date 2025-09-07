//
//  LN001CourseDetailCell.swift
//  ToraOffical
//
//  Created by Hung Vu on 23/5/25.
//

import UIKit

protocol LN001CourseDetailCellDelegate: AnyObject {
    func courseDetailCell(didTapItemAt indexPath: IndexPath, inSection section: Int)
}

final class LN001CourseDetailCell: UITableViewCell {
    @IBOutlet private weak var iconImage: UIImageView!
    @IBOutlet private weak var titleImage: UILabel!
    @IBOutlet private weak var iconExpandCollapse: UIImageView!
    @IBOutlet private weak var collectionView: UICollectionView!
    @IBOutlet private weak var expandCollapseView: UIView!
    @IBOutlet private weak var titleView: UIView!
    @IBOutlet private weak var heightConstraintExpandCollapse: NSLayoutConstraint!
    @IBOutlet private weak var backGroundView: UIView!
    
    weak var delegate: LN001CourseDetailCellDelegate?
    var sectionIndex: Int = 0
    var courseType: CourseType = .n1Course
    var contentType: ContentType = .kaiwa
//    Khai báo biến với didSet observer,
//    Mỗi khi isEnable thay đổi, đoạn code trong didSet sẽ chạy
    var isEnable: Bool = false {
        didSet {
            iconExpandCollapse.isHidden = isEnable ? false : true
            [iconImage, iconExpandCollapse].forEach {
                $0?.tintColor = isEnable ? UIColor(hexString: courseType.itemColor) : .gray
            }
            titleImage.textColor = isEnable ? UIColor(hexString: courseType.itemColor)  : .gray
        }
    }
    
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
            $0.layer.cornerRadius = 10
        }
        titleImage.font = UIFont(name: "SFRounded-Bold", size: 16)
        heightConstraintExpandCollapse.constant = 0
        isExpand = false
        iconExpandCollapse.image = UIImage(systemName: "chevron.down")?.withRenderingMode(.alwaysTemplate)
        iconExpandCollapse.transform = CGAffineTransform.identity
    }
    
    func updateData(courseType: CourseType, contentType: ContentType) {
        self.courseType = courseType
        self.contentType = contentType
        iconImage.image = UIImage(named: contentType.image)?.withRenderingMode(.alwaysTemplate)
        titleImage.text = contentType.title
        
        switch (courseType, contentType) {
        case (.n5Course, .kaiwa):
            isEnable = true
        default:
            isEnable = false
        }
        collectionView.reloadData()
    }
    
    private func calculateCollectionHeight() -> CGFloat {
        let itemHeight: CGFloat = 30
        let spacing: CGFloat = 8
        let totalSpacing = (calculateRowNumber() + 2) * spacing
        let height = calculateRowNumber() * itemHeight + totalSpacing
        return height
    }
    
    func calculateRowNumber() -> CGFloat {
        var rowNumber: CGFloat = 0
        if itemNumber() <= 0 {
            rowNumber = 0
        } else {
            rowNumber = CGFloat((itemNumber() + 4 - 1) / 4)
        }
        return rowNumber
    }
    
    func itemNumber() -> Int {
        switch (courseType, contentType) {
        case (.n5Course, .kaiwa):
            25
        default:
            0
        }
    }

    
    @IBAction func tapToExpandCourse(_ sender: Any) {
        if isEnable {
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
}

extension LN001CourseDetailCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // số bài của mỗi khóa học trong từng cấp độ
        itemNumber()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: DetailCell = collectionView.dequeueReusableCell(withReuseIdentifier: DetailCell.identifier, for: indexPath) as! DetailCell
        // không cần vòng lặp for trong cellForItemAt. Mỗi lần hàm này được gọi là để cấu hình một ô duy nhất, chỉ cần lấy đúng indexPath.row làm số bài
        let lessonNumber = indexPath.item + 1
        cell.setupDataLN001(number: "\(lessonNumber)")
        cell.delegate = self // Set delegate để nhận tap
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.courseDetailCell(didTapItemAt: indexPath, inSection: sectionIndex)
    }
}

extension LN001CourseDetailCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 60, height: 30)
    }
}

extension LN001CourseDetailCell: DetailCellDelegate {
    func tapSelectItem(number: String) {
        if let collectionView = self.collectionView,
           let indexPath = collectionView.indexPath(for: collectionView.visibleCells.first(where: {
               guard let cell = $0 as? DetailCell else { return false }
               return cell.lessonNbr == number
           }) ?? UICollectionViewCell()) {
            delegate?.courseDetailCell(didTapItemAt: indexPath, inSection: sectionIndex)
        }
    }
}
