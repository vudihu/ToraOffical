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
    @IBOutlet weak var bookImage1: UIImageView!
    @IBOutlet weak var bookImage2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        buyButton.layer.cornerRadius = 24
        [bookImage1, bookImage2].forEach{
            $0.layer.shadowColor = UIColor.black.cgColor
            $0.layer.shadowOpacity = 2
            $0.layer.shadowOffset = CGSize(width: 0, height: 10)
            $0.layer.shadowRadius = 10
        }
    }

    @IBAction func tapToBuy(_ sender: Any) {
    }
}
