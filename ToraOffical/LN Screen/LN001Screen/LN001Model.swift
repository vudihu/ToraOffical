//
//  LN001Model.swift
//  ToraOffical
//
//  Created by Hung Vu on 23/5/25.
//

import Foundation

final class LN001Model: LN001Contract.Model {
    enum CellType {
        case detail(icon: String, title: String)
        case empty(height: CGFloat)
    }
    
    var cells: [CellType] = []

    func setupData() {
        let items: [(String, String)] = [("BookBookmark", "kaiwa"),
                                         ("Clipboard", "Từ vựng"),
                                         ("Note", "Ngữ pháp"),
                                         ("Headphones", "Luyện nghe"),
                                         ("bookClose", "JLPT"),
                                         ("BookOpen", "Bài giảng"),
                                         ("Translate", "Chữ Hán"),
                                         ("Microphone", "Luyện đọc"),
                                         ("PlayCircle", "Tổng hợp")]
        
        cells = items.flatMap { icon, title in
            return [.empty(height: 8),
                    .detail(icon: icon, title: title)]
        }
    }
}

