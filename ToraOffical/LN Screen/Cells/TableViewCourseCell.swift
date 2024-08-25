//
//  TableViewCourseCell.swift
//  ToraOffical
//
//  Created by Hung Vu on 19/04/2024.
//

import UIKit

protocol TableViewCourseCellDelegate: AnyObject {
    func tapAction()
}

class TableViewCourseCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    var delegate: TableViewCourseCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupData(title: String) {
        titleLabel.text = title
    }
    
    
    @IBAction private func tapToViewVideo(_ sender: Any) {
        delegate?.tapAction()
    }
}
