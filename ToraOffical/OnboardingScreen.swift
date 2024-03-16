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
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var tapCount = 0
    let tilte1 = "Lộ trình học tinh gọn"
    let tilte2 = "Từ vựng theo chủ đề"
    let tilte3 = "Video đa dạng"
    var titleArr: [String] {
        return [tilte1, tilte2, tilte3]
    }
    
    let description1 = "Tora - một ứng dụng  dễ sử dụng,\nvới lộ trình học rõ ràng theo từng cấp độ"
    let description2 = "Từ vựng phong phú theo từng chủ đề,\ngiúp bạn dễ dàng chinh phục tiếng Nhật"
    let description3 = "Videos bám sát giáo trình nổi tiếng,\nnghe song ngữ Việt - Nhật giọng chuẩn"
    var descriptionArr: [String] {
        return [description1, description2, description3]
    }
    
    var image1 = "onboarding1"
    var image2 = "onboarding2"
    var image3 = "onboarding3"
    var imagenArr: [String] {
        return [image1, image2, image3]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        [dot1View, dot2View, dot3View].forEach {
            $0?.layer.cornerRadius = 4
        }
        [dot2View, dot3View].forEach {
            $0?.backgroundColor = UIColor(hex: 0xD9D9D9)
        }
        nextButton.layer.cornerRadius = 32
    }
    
    @IBAction func tapToNext(_ sender: Any) {
        tapCount += 1
        if tapCount < titleArr.count || tapCount < descriptionArr.count || tapCount < imagenArr.count {
            titleLabel.text = titleArr[tapCount]
            descriptionLabel.text = descriptionArr[tapCount]
            onboardingImage.image = UIImage(named: imagenArr[tapCount])
            if tapCount == 1 {
                dot2View.backgroundColor = .black
                [dot1View, dot3View].forEach {
                    $0?.backgroundColor = UIColor(hex: 0xD9D9D9)
                }
            } else {
                dot3View.backgroundColor = .black
                [dot1View, dot2View].forEach {
                    $0?.backgroundColor = UIColor(hex: 0xD9D9D9)
                }
            }
        } else {
            
        }
    }
}

