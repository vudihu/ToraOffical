//
//  LearnCardCell.swift
//  ToraOffical
//
//  Created by Hung Vu on 16/5/25.
//

import UIKit

protocol LearnCardCellDelegate: AnyObject {
    func tapToLearnDetail()
}

class LearnCardCell: UITableViewCell {
    @IBOutlet private weak var cardView: UIView!
    @IBOutlet private weak var levelTitle: UILabel!
    @IBOutlet private weak var levelImage: UIImageView!
    var delegate: LearnCardCellDelegate?
    override func awakeFromNib() {
        super.awakeFromNib()
        cardView.layer.cornerRadius = 16
    }
    
    func setupData(title: String, imageName: String, backgroundColor: String) {
        levelTitle.text = title
        levelImage.image = UIImage(named: imageName)
        cardView.backgroundColor = UIColor(hexString: backgroundColor)
    }
    
    @IBAction func tapToCourse(_ sender: Any) {
        delegate?.tapToLearnDetail()
    }
}
