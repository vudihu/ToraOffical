//
//  SuggestView.swift
//  ToraOffical
//
//  Created by Hung Vu on 06/04/2024.
//

import UIKit

protocol SuggestViewDelegate: AnyObject {
    func tapToViewSuggest(tag: Int)
    func tapToViewDetail(tag: Int)
}

class SuggestView: UIView {
    @IBOutlet private weak var bgView: UIView!
    @IBOutlet private weak var iconSuggest: UIImageView!
    @IBOutlet private weak var titleSuggest: UILabel!
    @IBOutlet private weak var numberVideoSuggest: UILabel!
    @IBOutlet private weak var detailView: UIView!
    @IBOutlet private weak var bgImage: UIImageView!
    weak var delegate: SuggestViewDelegate?
    var tagValue: Int = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        let nib = UINib(nibName: "SuggestView", bundle: nil)
        if let view = nib.instantiate(withOwner: self, options: nil).first as? UIView {
            view.frame = bounds
            addSubview(view)
        }
        [bgView, detailView].forEach {
            $0?.layer.cornerRadius = 16
        }
    }
    
    func suggestData(icon: UIImage?, title: String, number: String) {
        detailView.isHidden = true
        iconSuggest.image = icon
        titleSuggest.text = title
        numberVideoSuggest.text = number
    }
    
    func detailData() {
        bgView.isHidden = true
    }
    @IBAction func tapToSuggest(_ sender: Any) {
        delegate?.tapToViewSuggest(tag: tagValue)
        
    }
    @IBAction func tapToDetail(_ sender: Any) {
        delegate?.tapToViewDetail(tag: tagValue)
        
    }
}