//
//  HomeModel.swift
//  ToraOffical
//
//  Created by Hung Vu on 30/3/25.
//

import Foundation

final class HomeModel: HomeContract.Model {
    enum CellType {
        case content(title: String, videos: [YouTubeVideo])
        case empty(height: CGFloat)
    }
    var cells: [CellType] = []
    
    let communicateVideos: [YouTubeVideo] = [YouTubeVideo(videoId: "ZaB1gRZlr8o"),
                                             YouTubeVideo(videoId: "orFBc2-s0Ls"),
                                             YouTubeVideo(videoId: "Bro8eJUmOxw"),
                                             YouTubeVideo(videoId: "7oI-5SU_UZ8"),
                                             YouTubeVideo(videoId: "fDI6ZXi_KwY"),
                                             YouTubeVideo(videoId: "0X7VkqiPdmM")]
    
    let checkVideos: [YouTubeVideo] = [YouTubeVideo(videoId: "QMpbDdaRLGk"),
                                       YouTubeVideo(videoId: "0XJcJjpGIkE"),
                                       YouTubeVideo(videoId: "jGQffrtrS1k"),
                                       YouTubeVideo(videoId: "hJMZHKpjXmE")]
    
    let listenVideos: [YouTubeVideo] = [YouTubeVideo(videoId: "PDEBZXGN4oI"),
                                        YouTubeVideo(videoId: "aF2EJoJzszM"),
                                        YouTubeVideo(videoId: "9VYNrMgtPWo"),
                                        YouTubeVideo(videoId: "6xSZPcw3f7k")]
    let gramaVideos: [YouTubeVideo] = [YouTubeVideo(videoId: "x1vPSVmiUlg"),
                                        YouTubeVideo(videoId: "vfUgA8G1EQg"),
                                        YouTubeVideo(videoId: "9wVgvG8GygU"),
                                        YouTubeVideo(videoId: "-SpsyWiksfc")]

    
    func setupData() {
        cells.append(.empty(height: 14))
        cells.append(.content(title: "Gợi ý", videos: listenVideos))
        cells.append(.empty(height: 14))
        cells.append(.content(title: "Phản xạ tiếng Nhật(Không tiếng Việt)", videos: communicateVideos))
        cells.append(.empty(height: 14))
        cells.append(.content(title: "Phản xạ tiếng Nhật(có tiếng Việt)", videos: checkVideos))
        cells.append(.empty(height: 14))
        cells.append(.content(title: "Tổng hợp ngữ pháp", videos: gramaVideos))
    }
}
