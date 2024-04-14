//
//  VideoScreen.swift
//  ToraOffical
//
//  Created by Hung Vu on 13/04/2024.
//

import UIKit
import AVKit
import PDFKit

class VideoScreen: UIViewController {
    @IBOutlet weak var titleHeader: UILabel!
    @IBOutlet weak var videoView: UIView!
    @IBOutlet weak var pdfView: PDFView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayVideo()
        displayPDF()
    }
    
    private func displayData() {
        
    }
    
    private func displayVideo() {
        if let videoURL = Bundle.main.url(forResource: "N5-course1", withExtension: "mp4") {
            let player = AVPlayer(url: videoURL)
            let playerLayer = AVPlayerLayer(player: player)
            
            playerLayer.frame = videoView.bounds
            playerLayer.videoGravity = .resizeAspectFill
            videoView.layer.addSublayer(playerLayer)
            player.play()
        }
    }
    
    private func displayPDF() {
        if let path = Bundle.main.url(forResource: "yourPDFFile", withExtension: "pdf") {
            let pdfDocument = PDFDocument(url: path)
            pdfView.document = pdfDocument
            view.addSubview(pdfView)
        }
    }


    @IBAction private func tapToBack(_ sender: Any) {
        let courseScreen = CourseScreen()
        navigationController?.pushViewController(courseScreen, animated: true)
    }
}
