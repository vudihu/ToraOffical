//
//  SuggestView.swift
//  ToraOffical
//
//  Created by Hung Vu on 06/04/2024.
//

import UIKit

protocol SuggestViewDelegate: AnyObject {
    func tapToViewSuggest(list: ListSuggest)
    func tapToViewDetail(list: ListSuggest)
}

enum ListSuggest {
    case kaiwa
    case words
    case grammar
}
var suggest: [ListSuggest] = [.kaiwa, .words, .grammar]
var list: ListSuggest = .kaiwa

class SuggestView: UIView {
    @IBOutlet private weak var bgView: UIView!
    @IBOutlet private weak var iconSuggest: UIImageView!
    @IBOutlet private weak var titleSuggest: UILabel!
    @IBOutlet private weak var numberVideoSuggest: UILabel!
    @IBOutlet private weak var detailView: UIView!
    @IBOutlet private weak var bgImage: UIImageView!
    weak var delegate: SuggestViewDelegate?
    
    
    var suggest: [ListSuggest] = [.kaiwa, .words, .grammar]
    var list: ListSuggest = .kaiwa
    
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
        bgView.layer.cornerRadius = 16
        bgImage.layer.cornerRadius = 30
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
    @IBAction private func tapToSuggest(_ sender: Any) {
        delegate?.tapToViewSuggest(list: list)
        
    }
    @IBAction private func tapToDetail(_ sender: Any) {
        delegate?.tapToViewDetail(list: list)
        
    }
}
