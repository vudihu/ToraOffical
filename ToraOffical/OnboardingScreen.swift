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
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    
    private var tapCount = 0
    private let tilte1 = "Lộ trình học tinh gọn"
    private let tilte2 = "Từ vựng theo chủ đề"
    private let tilte3 = "Video đa dạng"
    private var titleArr: [String] {
        return [tilte1, tilte2, tilte3]
    }
    
    private let description1 = "Tora - một ứng dụng  dễ sử dụng,\nvới lộ trình học rõ ràng theo từng cấp độ"
    private let description2 = "Từ vựng phong phú theo từng chủ đề,\ngiúp bạn dễ dàng chinh phục tiếng Nhật"
    private let description3 = "Videos bám sát giáo trình nổi tiếng,\nnghe song ngữ Việt - Nhật giọng chuẩn"
    private var descriptionArr: [String] {
        return [description1, description2, description3]
    }
    
    private var image1 = "onboarding1"
    private var image2 = "onboarding2"
    private var image3 = "onboarding3"
    private var imagenArr: [String] {
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
            $0?.backgroundColor = UIColor(hexString: "#D9D9D9")
        }
        nextButton.layer.cornerRadius = 32
    }
    
    @IBAction private func tapToNext(_ sender: Any) {
//        tapCount += 1
//        if tapCount < titleArr.count || tapCount < descriptionArr.count || tapCount < imagenArr.count {
//            titleLabel.text = titleArr[tapCount]
//            descriptionLabel.text = descriptionArr[tapCount]
//            onboardingImage.image = UIImage(named: imagenArr[tapCount])
//            if tapCount == 1 {
//                dot2View.backgroundColor = .black
//                [dot1View, dot3View].forEach {
//                    $0?.backgroundColor = UIColor(hexString: "#D9D9D9")
//                }
//            } else {
//                dot3View.backgroundColor = .black
//                [dot1View, dot2View].forEach {
//                    $0?.backgroundColor = UIColor(hexString: "#D9D9D9")
//                }
//            }
//        } else {
//            let loginScreen = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginScreen") as! LoginScreen
//                navigationController?.pushViewController(loginScreen, animated: true)
//        }
        let test = CourseScreen()
        navigationController?.pushViewController(test, animated: true)
    }
}

