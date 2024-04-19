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
    
    private var player: AVPlayer?
    private let pdf = PDFView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayVideo()
        displayPDF()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        pdf.frame = pdfView.bounds
    }
    
    private func displayVideo() {
        if let videoURL = Bundle.main.url(forResource: "kawaiLession1", withExtension: "mp4") {
            player = AVPlayer(url: videoURL)
            let playerLayer = AVPlayerLayer(player: player)
            playerLayer.frame = videoView.bounds
            playerLayer.videoGravity = .resizeAspectFill
            videoView.layer.addSublayer(playerLayer)
            playImage.isHidden = false
            videoView.alpha = 0.4
            player?.pause()
            
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapVideo))
            videoView.addGestureRecognizer(tapGesture)
        }
    }
    
    @objc func tapVideo() {
        guard let player = player else { return }
        if player.timeControlStatus == .paused {
            playImage.isHidden = true
            videoView.alpha = 1
            player.play()
        } else if player.timeControlStatus == .playing {
            playImage.isHidden = false
            videoView.alpha = 0.4
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
    }
    


    @IBAction private func tapToBack(_ sender: Any) {
        guard let player = player else { return }
        player.pause()
        let courseScreen = CourseScreen()
        navigationController?.pushViewController(courseScreen, animated: false)
    }
}
