//
//  TabbarBackgroundView.swift
//  ToraOffical
//
//  Created by Hung Vu on 05/03/2025.
//

import UIKit

class TabbarBackgroundView: UIView {
    
    // MARK: - Properties
    var fillColor = #colorLiteral(red: 0.8509803922, green: 0.1254901961, blue: 0.06666666667, alpha: 1)
    let shadowColor = #colorLiteral(red: 0.310, green: 0.349, blue: 0.475, alpha: 0.4)
    
    let waveHeight: CGFloat = 16.0
    let tabbarHeight: CGFloat = 72.0
    var tabbarTotal: Int = 3 {
        didSet {
            drawWave(at: currentTabIndex)
        }
    }
    
    var currentTabIndex: Int = 0
    private let backgroundLayer = CAShapeLayer()
    private let imageSelectedName = "tabbar_bg_selected"
    
    private let bigSelectImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialConfig()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialConfig()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layoutBigSelectImage(animated: false)
    }
    
    private func initialConfig() {
        clipsToBounds = false
        layer.addSublayer(backgroundLayer)
        if let image = UIImage(named: imageSelectedName) {
            bigSelectImageView.image = image
            addSubview(bigSelectImageView)
        }
        drawWave(at: currentTabIndex)
    }

    // MARK: - Public update method
    func updateTabIndex(_ index: Int) {
        let oldIndex = currentTabIndex
        currentTabIndex = index
        animateWaveTransition(from: oldIndex, to: index)
        layoutBigSelectImage(animated: true)
    }
    
    // MARK: - Draw
    private func drawWave(at tabIndex: Int) {
        let path = generateWavePath(tabIndex: tabIndex, in: bounds)
        backgroundLayer.path = path.cgPath
        backgroundLayer.fillColor = fillColor.cgColor
        backgroundLayer.shadowColor = shadowColor.cgColor
        backgroundLayer.shadowOffset = CGSize(width: 0, height: -2)
        backgroundLayer.shadowRadius = 5
        backgroundLayer.shadowOpacity = 0.4
    }

    private func animateWaveTransition(from oldIndex: Int, to newIndex: Int) {
        let fromPath = generateWavePath(tabIndex: oldIndex, in: bounds).cgPath
        let toPath = generateWavePath(tabIndex: newIndex, in: bounds).cgPath

        let animation = CABasicAnimation(keyPath: "path")
        animation.fromValue = fromPath
        animation.toValue = toPath
        animation.duration = 0.35
        animation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        backgroundLayer.add(animation, forKey: "wavePath")

        backgroundLayer.path = toPath
    }

    // MARK: - Image Movement
    private func layoutBigSelectImage(animated: Bool) {
        guard tabbarTotal > 0 else { return }

        let sizeImage: CGFloat = 62
        let yAxisImage: CGFloat = 10
        let tabWidth = bounds.width / CGFloat(tabbarTotal)
        let xAxis = tabWidth * CGFloat(currentTabIndex) + (tabWidth - sizeImage) / 2
        let targetFrame = CGRect(x: xAxis, y: yAxisImage, width: sizeImage, height: sizeImage)

        if animated {
            UIView.animate(withDuration: 0.35, delay: 0, options: .curveEaseInOut, animations: {
                self.bigSelectImageView.frame = targetFrame
            })
        } else {
            bigSelectImageView.frame = targetFrame
        }
    }

    // MARK: - Path Generator
    private func generateWavePath(tabIndex: Int, in rect: CGRect) -> UIBezierPath {
        let path = UIBezierPath()
        let topPadding: CGFloat = rect.height - tabbarHeight
        let tabWidth = rect.width / CGFloat(max(tabbarTotal, 1))
        let centerX = tabWidth * CGFloat(tabIndex) + tabWidth / 2
        let waveWidth: CGFloat = rect.width * 0.25
        let startX = centerX - waveWidth / 2

        path.move(to: CGPoint(x: 0, y: tabbarHeight + topPadding))
        path.addLine(to: CGPoint(x: 0, y: waveHeight + topPadding))
        path.addLine(to: CGPoint(x: startX, y: waveHeight + topPadding))

//        let p1 = CGPoint(x: 0 + startX, y: waveHeight + topPadding)
        let cp1 = CGPoint(x: 21.1 + startX, y: 15.9 + topPadding)
        let cp2 = CGPoint(x: 26.2 + startX, y: 0.15 + topPadding)
        let p2 = CGPoint(x: 47.35 + startX, y: 0 + topPadding)

        let cp3 = CGPoint(x: 68.78 + startX, y: -0.15 + topPadding)
        let cp4 = CGPoint(x: 73.75 + startX, y: 15.88 + topPadding)
        let p3 = CGPoint(x: 93.58 + startX, y: waveHeight + topPadding)

        path.addCurve(to: p2, controlPoint1: cp1, controlPoint2: cp2)
        path.addCurve(to: p3, controlPoint1: cp3, controlPoint2: cp4)

        path.addLine(to: CGPoint(x: rect.width, y: waveHeight + topPadding))
        path.addLine(to: CGPoint(x: rect.width, y: tabbarHeight + topPadding))
        path.addLine(to: CGPoint(x: 0, y: tabbarHeight + topPadding))
        path.close()

        return path
    }
}
