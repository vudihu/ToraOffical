//
//  ProfileScreen.swift
//  ToraOffical
//
//  Created by Hung Vu on 16/03/2024.
//

import UIKit

class ProfileScreen: UIViewController {
    @IBOutlet private weak var bgView: UIView!
    @IBOutlet private weak var titleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = UIColor.white.withAlphaComponent(0.4)
        [bgView, titleView].forEach {
            $0?.layer.cornerRadius = 24
        }
    }

    @IBAction func tapToClose(_ sender: Any) {
        dismiss(animated: false, completion: nil)
    }
}
