//
//  EmptyCell.swift
//  ToraOffical
//
//  Created by Hung Vu on 17/5/25.
//

import UIKit

class EmptyCell: UITableViewCell {

    @IBOutlet private weak var heightConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configSpace(height: CGFloat) {
        heightConstraint.constant = height
    }
}
