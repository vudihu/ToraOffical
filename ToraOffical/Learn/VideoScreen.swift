//
//  VideoScreen.swift
//  ToraOffical
//
//  Created by Hung Vu on 13/04/2024.
//

import UIKit
import AVKit
import AVFoundation
import PDFKit

class VideoScreen: UIViewController {
    
    @IBOutlet private weak var titleHeader: UILabel!
    @IBOutlet private weak var videoView: UIView!
    @IBOutlet private weak var pdfView: PDFView!
    @IBOutlet private weak var playImage: UIImageView!
    @IBOutlet private weak var bgView: UIView!
    @IBOutlet private weak var scrollView: UIScrollView!
    @IBOutlet private weak var scrollButton: UIButton!
    @IBOutlet private weak var scrollImage: UIImageView!
    
    private var player: AVPlayer?
    private let pdf = PDFView()
    var screenType: CourseScreen.ScreenType = .n1Course
    private var isScroll: Bool = false {
        didSet {
            scrollView.isScrollEnabled = isScroll
            scrollView.contentOffset = CGPoint(x: 0, y: isScroll ? videoView.frame.height + 16 : 0)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        displayVideo()
        displayPDF()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        pdf.frame = pdfView.bounds
    }
    
    private func setupUI() {
        scrollView.isScrollEnabled = false
        titleHeader.textColor = UIColor(hexString: screenType.color)
        videoView.layer.shadowColor = UIColor.black.cgColor
        videoView.layer.shadowOpacity = 0.5
        videoView.layer.shadowOffset = CGSize(width: 0, height: 2)
        videoView.layer.shadowRadius = 5
    }
    
    private func displayVideo() {
        if let videoURL = Bundle.main.url(forResource: "kawaiLession1", withExtension: "mp4") {
            player = AVPlayer(url: videoURL)
            let playerLayer = AVPlayerLayer(player: player)
            playerLayer.frame = videoView.bounds
            playerLayer.videoGravity = .resizeAspect
            videoView.layer.addSublayer(playerLayer)
            playImage.isHidden = false
            player?.pause()
            
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapVideo))
            videoView.addGestureRecognizer(tapGesture)
        }
    }
    
    @objc func tapVideo() {
        guard let player = player else { return }
        if player.timeControlStatus == .paused {
            playImage.isHidden = true
            player.play()
        } else if player.timeControlStatus == .playing {
            playImage.isHidden = false
            player.pause()
        }
    }
    
    private func displayPDF() {
        pdfView.addSubview(pdf)
        guard let url = Bundle.main.url(forResource: "lession1", withExtension: "pdf") else {
           return
        }
        guard let document = PDFDocument(url: url) else {
            return
        }
        pdf.document = document
        pdf.autoScales = true
        pdf.backgroundColor = .clear
    }
    


    @IBAction private func tapToBack(_ sender: Any) {
        guard let player = player else { return }
        player.pause()
        let courseScreen = CourseScreen()
        navigationController?.pushViewController(courseScreen, animated: false)
    }
    
    @IBAction private func tapToScroll(_ sender: Any) {
        isScroll.toggle()
    }
}
