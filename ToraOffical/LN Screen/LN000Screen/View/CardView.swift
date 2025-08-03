//
//  CardView.swift
//  ToraOffical
//
//  Created by Hung Vu on 03/04/2024.
//

import UIKit

protocol CardViewDelegate: AnyObject {
    func tapCardView(cardType: CardType)
}

enum CardType {
    case n5Card
    case n4Card
    case n3Card
    case n2Card
    case n1Card
}

class CardView: UIView {
    @IBOutlet private weak var cardView: UIView!
    @IBOutlet private weak var detailView: UIView!
    @IBOutlet private weak var iconImage: UIImageView!
    @IBOutlet private weak var courseNameDetail: UILabel!
    @IBOutlet private weak var videosNumber: UILabel!
    
    weak var delegate: CardViewDelegate?
    var cardType: CardType = .n1Card
    
    override init(frame: CGRect) {
         super.init(frame: frame)
         commonInit()
     }
     
     required init?(coder aDecoder: NSCoder) {
         super.init(coder: aDecoder)
         commonInit()
     }
    
    private func commonInit() {
          let nib = UINib(nibName: "CardView", bundle: nil)
          if let view = nib.instantiate(withOwner: self, options: nil).first as? UIView {
              view.frame = bounds
              addSubview(view)
          }
        cardView.layer.cornerRadius = 16
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped))
        cardView.addGestureRecognizer(tapGesture)
      }
    
    @objc private func viewTapped() {
        delegate?.tapCardView(cardType: cardType)
    }
    
    func setupDisplay(bgColor: UIColor?, image: UIImage?, courseNumber: String, courseName: String, number: String) {
        cardView.backgroundColor = bgColor
        iconImage.image = image
        videosNumber.text = number
        courseNameDetail.text = courseName
    }
}
