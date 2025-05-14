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
    private let tilte1 = "Học offline mọi lúc, mọi nơi"
    private let tilte2 = "Nội dung khóa học theo từng cấp độ"
    private let tilte3 = "Video đa dạng"
    private var titleArr: [String] {
        return [tilte1, tilte2, tilte3]
    }
    
    private let description1 = "Bạn có thể học bất kỳ đâu, bất kỳ khi nào mà không cần kết nối mạng"
    private let description2 = "Từ vựng phong phú theo chủ đề,\nngữ pháp theo từng câp độ"
    private let description3 = "Videos bám sát giáo trình,\nnghe song ngữ Việt - Nhật giọng chuẩn"
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
        tapCount += 1
        if tapCount < titleArr.count || tapCount < descriptionArr.count || tapCount < imagenArr.count {
            titleLabel.text = titleArr[tapCount]
            descriptionLabel.text = descriptionArr[tapCount]
            onboardingImage.image = UIImage(named: imagenArr[tapCount])
            if tapCount == 1 {
                dot2View.backgroundColor = .black
                [dot1View, dot3View].forEach {
                    $0?.backgroundColor = UIColor(hexString: "#D9D9D9")
                }
            } else {
                dot3View.backgroundColor = .black
                [dot1View, dot2View].forEach {
                    $0?.backgroundColor = UIColor(hexString: "#D9D9D9")
                }
            }
        } else {
            let loginScreen = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginScreen") as! LoginScreen
            navigationController?.pushViewController(loginScreen, animated: true)
        }
        
        
        let mainTabBarController = MainTabBarViewController()
        let navigationController = UINavigationController(rootViewController: mainTabBarController)
        navigationController.setNavigationBarHidden(true, animated: false)
        
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let sceneDelegate = windowScene.delegate as? SceneDelegate {
            sceneDelegate.window?.rootViewController = navigationController
            sceneDelegate.window?.makeKeyAndVisible()
        }
    }
}

