//
//  CardView.swift
//  ToraOffical
//
//  Created by Hung Vu on 03/04/2024.
//

import UIKit

class CardView: UIView {
    @IBOutlet private weak var cardView: UIView!
    @IBOutlet private weak var courseNameView: UIView!
    @IBOutlet private weak var bgView: UIView!
    @IBOutlet private weak var detailView: UIView!
    @IBOutlet private weak var courseNameTitle: UILabel!
    @IBOutlet private weak var redDotView: UIView!
    @IBOutlet private weak var yellowDotView: UIView!
    @IBOutlet private weak var greenDotView: UIView!
    @IBOutlet private weak var iconImage: UIImageView!
    @IBOutlet private weak var courseNameDetail: UILabel!
    @IBOutlet private weak var videosNumber: UILabel!
    
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
        courseNameView.layer.cornerRadius = 12
        bgView.roundCorners(corners: [.bottomLeft, .bottomRight], radius: 12)
        detailView.layer.cornerRadius = 14
        [redDotView, yellowDotView, greenDotView].forEach {
            $0?.layer.cornerRadius = 4
        }
      }
    
    func setupDisplay(bgColor: UIColor?, image: UIImage?, courseNumber: String, courseName: String, number: String) {
        cardView.backgroundColor = bgColor
        iconImage.image = image
        courseNameTitle.text = courseNumber
        videosNumber.text = number
        courseNameDetail.text = courseName
    }
}
