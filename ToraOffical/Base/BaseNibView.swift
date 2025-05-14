//
//  BaseNibView.swift
//  ToraOffical
//
//  Created by Hung Vu on 05/03/2025.
//

import UIKit

class BaseNibView: UIView {
    
    private var contentView: UIView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func loadNib(nibName: String) -> UIView {
        let bundle = Bundle(for: type(of: self))
        guard let contentView: UIView = bundle.loadNibNamed(nibName, owner: self, options: nil)!.first as? UIView else {
            return UIView(frame: frame)
        }
        return contentView
    }
    
    func addConstraintsWithFormat(format: String, views: UIView...) {
        var viewsDictionary = [String: UIView]()
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            viewsDictionary[key] = view
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: viewsDictionary))
    }
    
    func loadContentViewWithNib(nibName: String) {
        backgroundColor = UIColor.clear
        if contentView == nil {
            contentView = self.loadNib(nibName: nibName)
            contentView?.frame = bounds
            addSubview(contentView!)
            addConstraintsWithFormat(format: "H:|[v0]|", views: contentView!)
            addConstraintsWithFormat(format: "V:|[v0]|", views: contentView!)
        }
    }
    
    /// Set background color for content view
    ///
    /// - Parameter color: UIColor
    func setBackgroundColor(color: UIColor) {
        contentView?.backgroundColor = color
    }
}
