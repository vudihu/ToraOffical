//
//  LN001Model.swift
//  ToraOffical
//
//  Created by Hung Vu on 23/5/25.
//

import Foundation

enum ScreenType {
    case n5Course
    case n4Course
    case n3Course
    case n2Course
    case n1Course
    
    var title: String {
        switch self {
        case .n5Course:
            return "Khóa học N5"
        case .n4Course:
            return "Khóa học N4"
        case .n3Course:
            return "Khóa học N3"
        case .n2Course:
            return "Khóa học N2"
        case .n1Course:
            return "Khóa học N1"
        }
    }
    
    var color: String {
        switch self {
        case .n5Course:
            return "#33A2C5"
        case .n4Course:
            return "#ECA451"
        case .n3Course:
            return "#83C579"
        case .n2Course:
            return "#9F7FD1"
        case .n1Course:
            return "#5389B9"
        }
    }
}

enum ListCourse {
    case kaiwa
    case word
    case grammar
    case listen
    case JLPT
    case learn
    case han
    case read
    case all
}

class LN001Model: LN001Contract.Model {
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

