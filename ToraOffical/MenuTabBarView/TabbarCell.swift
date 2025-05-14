//
//  TabbarCell.swift
//  ToraOffical
//
//  Created by Hung Vu on 05/03/2025.
//

import UIKit

class TabbarCell: UICollectionViewCell {
    static var notifyIcon: UIImageView?
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var iconImageView: UIImageView!
    @IBOutlet private weak var bgSelectedImageView: UIImageView!
    @IBOutlet private weak var bottomSpace: NSLayoutConstraint!
    
    private var isAlertAnimationing = false
    private let duration: TimeInterval = 0.3
    var tabState: TabbarState = .inactive
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Custom Method
extension TabbarCell {
    
    func updateTabState(_ updateState: TabbarState, withType type: TabbarObject) {
        nameLabel.text = type.name
        updateUI(withType: type, andState: updateState)
    }
    
    func animateState(duration: TimeInterval, delay: TimeInterval, updateState: TabbarState, withType type: TabbarObject, completion: (() -> Void)? = nil) {
        updateUI(withType: type, andState: ((updateState == .active) ? .inactive : .active))
        DispatchQueue.main.async {
            UIView.transition(with: self, duration: duration, options: .transitionCrossDissolve, animations: {
                self.updateUI(withType: type, andState: updateState)
                self.layoutIfNeeded()
            }, completion: { (_) in
                completion?()
            })
        }
    }
    
    private func updateUI(withType type: TabbarObject, andState state: TabbarState) {
        if state == .active {
            iconImageView.image = type.activeImage
            nameLabel.attributedText = titleFor(type: type, and: state)
            bottomSpace.constant = 18
        } else {
            iconImageView.tintColor = .white
            iconImageView.image = type.inactiveImage
            nameLabel.attributedText = titleFor(type: type, and: state)
            bottomSpace.constant = 8
        }
    }
    
    private func titleFor(type: TabbarObject, and state: TabbarState) -> NSAttributedString? {
        let attr = [NSAttributedString.Key.font: state == .active ? type.activeFont : type.inactiveFont,
                        NSAttributedString.Key.foregroundColor: state == .active ? type.activeColor : type.inactiveColor]
        if type.kernvalue != 0 {
            let titleAttr = NSMutableAttributedString(string: type.name, attributes: attr)
            titleAttr.addAttribute(.kern, value: type.kernvalue, range: NSRange(location: 0, length: titleAttr.length))
            return titleAttr
        } else {
            let  titleAttr = NSMutableAttributedString(string: type.name, attributes: attr)
            return titleAttr
        }
    }
}
