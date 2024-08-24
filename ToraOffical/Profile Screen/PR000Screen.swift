//
//  PR000Screen.swift
//  ToraOffical
//
//  Created by Hung Vu on 16/03/2024.
//

import UIKit

class PR000Screen: UIViewController {
    @IBOutlet private weak var bgView: UIView!
    @IBOutlet private weak var imageView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        [bgView, imageView].forEach {
            $0?.layer.cornerRadius = 24
        }
    }
}
