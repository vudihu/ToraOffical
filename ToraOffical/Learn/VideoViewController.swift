//
//  VideoViewController.swift
//  ToraOffical
//
//  Created by Hung Vu on 19/04/2024.
//

import UIKit
import AVFoundation
import AVKit

class VideoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let videoURL = Bundle.main.url(forResource: "kawaiLession1", withExtension: "mp4") {
            let player = AVPlayer(url: videoURL)
            let playerLayer = AVPlayerLayer(player: player)
            playerLayer.frame = view.bounds
//            playerLayer.videoGravity = .resizeAspectFill
            view.layer.addSublayer(playerLayer)
            player.play()
        }
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "kawaiLession1", ofType: "mp4")!))
//        let layer = AVPlayerLayer(player: player)
//        layer.frame = view.bounds
//        view.layer.addSublayer(layer)
//        player.play()
//    }
}
