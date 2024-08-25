//
//  ER000Screen.swift
//  ToraOffical
//
//  Created by Hung Vu on 03/04/2024.
//

import UIKit

class ER000Screen: UIViewController {
    @IBOutlet private weak var bgView: UIView!
    @IBOutlet private weak var imageView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        [bgView, imageView].forEach {
            $0.layer.cornerRadius = 24
        }
    }
    
    @IBAction private func tapToClose(_ sender: Any) {
        dismiss(animated: false, completion: nil)
    }
}
