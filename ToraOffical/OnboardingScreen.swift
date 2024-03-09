//
//  OnboardingScreen.swift
//  ToraOffical
//
//  Created by Hung Vu on 09/03/2024.
//

import UIKit

class OnboardingScreen: UIViewController {

    @IBOutlet private weak var onboardingImage: UIImageView!
    @IBOutlet private weak var onboardingTitle: UILabel!
    @IBOutlet private weak var onboardingDesciption: UILabel!
    @IBOutlet private weak var nextButton: UIButton!
    @IBOutlet private weak var dot1View: UIView!
    @IBOutlet private weak var dot2View: UIView!
    @IBOutlet private weak var dot3View: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        nextButton.layer.cornerRadius = 40
    }


}
