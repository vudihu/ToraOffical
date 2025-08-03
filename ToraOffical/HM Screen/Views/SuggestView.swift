//
//  SuggestView.swift
//  ToraOffical
//
//  Created by Hung Vu on 30/3/25.
//

import UIKit

final class SuggestView: UIView {
    @IBOutlet private weak var contentSuggestView: UIView!
    
    // MARK: override bộ khởi tạo của UIView
    override init(frame: CGRect) {
        super.init(frame: frame)
        configeUI()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configeUI()
    }
    
    func configeUI() {
        // MARK: Load xib
        Bundle.main.loadNibNamed("SuggestView", owner: self, options: nil) /// load file xib theo tên từ bộ nhớ
        self.addSubview(contentSuggestView)
        
        /// định vị contentSuggestView show toàn bộ giao diện
        contentSuggestView.frame = self.bounds
        contentSuggestView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
}
