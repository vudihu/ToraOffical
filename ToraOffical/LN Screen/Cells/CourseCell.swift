//
//  CourseCell.swift
//  ToraOffical
//
//  Created by Hung Vu on 18/04/2024.
//

import UIKit

class CourseCell: UICollectionViewCell {
    @IBOutlet private weak var superView: UIView!
    @IBOutlet private weak var subView: UIView!
    @IBOutlet weak var lessionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    func setupUI() {
        subView.layer.cornerRadius = 35
    }

}
