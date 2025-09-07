//
//  LN002Screen.swift
//  ToraOffical
//
//  Created by Hung Vu on 13/04/2024.
//

import UIKit
import WebKit
import AVFoundation
import PDFKit

final class LN002Screen: UIViewController {
    
    @IBOutlet private weak var titleHeader: UILabel!
    @IBOutlet private weak var videoView: UIView!
    @IBOutlet private weak var pdfView: PDFView!
    @IBOutlet private weak var bgView: UIView!
    @IBOutlet private weak var scrollView: UIScrollView!
    
    private var player: AVPlayer?
    private let pdf = PDFView()
    var screenType: CourseType = .n1Course
    private var isScroll: Bool = false {
        didSet {
            scrollView.isScrollEnabled = isScroll
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        displayPDF()
    }
    
    private var hasSetupVideo = false

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        pdf.frame = pdfView.bounds

        if !hasSetupVideo {
            hasSetupVideo = true
            displayVideo()
        }
    }

    
    private func setupUI() {
        scrollView.isScrollEnabled = false
        titleHeader.textColor = UIColor(hexString: screenType.backgroundColor)
    }
    
    private func displayVideo() {
        let webView = WKWebView()
        webView.translatesAutoresizingMaskIntoConstraints = false
        videoView.addSubview(webView)
        NSLayoutConstraint.activate([
            webView.topAnchor.constraint(equalTo: videoView.topAnchor),
            webView.leadingAnchor.constraint(equalTo: videoView.leadingAnchor),
            webView.trailingAnchor.constraint(equalTo: videoView.trailingAnchor),
            webView.bottomAnchor.constraint(equalTo: videoView.bottomAnchor)
        ])

        let videoID = "orFBc2-s0Ls"
        let embedHTML = """
        <!DOCTYPE html>
        <html>
        <body style="margin:0">
        <iframe width="100%" height="100%" src="https://www.youtube.com/embed/\(videoID)?playsinline=1" frameborder="0" allowfullscreen></iframe>
        </body>
        </html>
        """
        webView.loadHTMLString(embedHTML, baseURL: nil)
    }
    
    private func displayPDF() {
        pdfView.addSubview(pdf)
        guard let url = Bundle.main.url(forResource: "n5Kaiwa1", withExtension: "pdf") else {
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
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction private func tapToScroll(_ sender: Any) {
        isScroll.toggle()
    }
}
