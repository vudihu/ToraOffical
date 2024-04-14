//
//  ImageCell.swift
//  ToraOffical
//
//  Created by Hung Vu on 07/04/2024.
//

import UIKit

protocol ImageCellDelegate: AnyObject {
    func actionTap()
}

class ImageCell: UITableViewCell {
    @IBOutlet private weak var bgImage: UIImageView!
    weak var delegate: ImageCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction private func tapToLinkYT(_ sender: Any) {
        self.delegate?.actionTap()
    }
}
