//
//  BookScreen.swift
//  ToraOffical
//
//  Created by Hung Vu on 16/03/2024.
//

import UIKit

class BookScreen: UIViewController {

    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var buyButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        buyButton.layer.cornerRadius = 24
    }

    @IBAction func tapToBuy(_ sender: Any) {
    }
}