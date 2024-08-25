//
//  DetailView.swift
//  ToraOffical
//
//  Created by Hung Vu on 12/04/2024.
//

import UIKit

protocol DetailViewDelegate: AnyObject {
    func tapNumberLesson()
}

class DetailView: UIView {
    @IBOutlet private weak var backgroundView: UIView!
    @IBOutlet weak var subView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    var delegate: DetailViewDelegate?
    
    override init(frame: CGRect) {
         super.init(frame: frame)
        setupUI()
     }
     
     required init?(coder aDecoder: NSCoder) {
         super.init(coder: aDecoder)
         setupUI()
     }
    
    private func setupUI() {
          let nib = UINib(nibName: "DetailView", bundle: nil)
          if let view = nib.instantiate(withOwner: self, options: nil).first as? UIView {
              view.frame = bounds
              addSubview(view)
          }
        backgroundView.layer.cornerRadius = 35
        subView.layer.cornerRadius = 25
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTapView))
        backgroundView.addGestureRecognizer(tapGesture)
      }
    
    @objc private func handleTapView() {
        delegate?.tapNumberLesson()
    }
    
    func displayData(title: String) {
        titleLabel.text = title
    }
}
