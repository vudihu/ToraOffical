//
//  BaseViewController.swift
//  ToraOffical
//
//  Created by Hung Vu on 24/8/25.
//

import UIKit

enum CourseType: CaseIterable, Hashable {
    case n5Course, n4Course, n3Course, n2Course, n1Course
    
    struct CourseInfo {
        let courseTitle: String
        let courseImage: String
        let courseBackgroundColor: String
        let itemColor: String
    }
    
    var course: CourseInfo {
        switch self {
        case .n5Course:
            return CourseInfo(courseTitle: "Khóa học N5", courseImage: "gate-icon", courseBackgroundColor: "#5389B9", itemColor: "006989")
        case .n4Course:
            return CourseInfo(courseTitle: "Khóa học N4", courseImage: "flag-icon", courseBackgroundColor: "#9F7FD1", itemColor: "693382")
        case .n3Course:
            return CourseInfo(courseTitle: "Khóa học N3", courseImage: "noodle-icon", courseBackgroundColor: "83C579", itemColor: "3D8D7A")
        case .n2Course:
            return CourseInfo(courseTitle: "Khóa học N2", courseImage: "shushi", courseBackgroundColor: "ECA451", itemColor: "E07B39")
        case .n1Course:
            return CourseInfo(courseTitle: "Khóa học N1", courseImage: "fuji", courseBackgroundColor: "33A2C5", itemColor: "005C78")
        }
    }

    var title: String { course.courseTitle }
    var imageName: String { course.courseImage }
    var backgroundColor: String { course.courseBackgroundColor }
    var itemColor: String { course.itemColor }
}

enum ContentType: CaseIterable, Hashable {
    case kaiwa, word, grammar, listening, JLPT, course, chineseCharacters, reading, total
    
    struct ContentInfo {
        let contentTitle: String
        let contentImage: String
    }
    
    var content: ContentInfo {
        switch self {
        case .kaiwa:
            return ContentInfo(contentTitle: "kaiwa", contentImage: "BookBookmark")
        case .word:
            return ContentInfo(contentTitle: "Từ vựng", contentImage: "Clipboard")
        case .grammar:
            return ContentInfo(contentTitle: "Ngữ pháp", contentImage: "Note")
        case .listening:
            return ContentInfo(contentTitle: "Luyện nghe", contentImage: "Headphones")
        case .JLPT:
            return ContentInfo(contentTitle: "JLPT", contentImage: "bookClose")
        case .course:
            return ContentInfo(contentTitle: "Bài giảng", contentImage: "BookOpen")
        case .chineseCharacters:
            return ContentInfo(contentTitle: "Chữ Hán", contentImage: "Translate")
        case .reading:
            return ContentInfo(contentTitle: "Luyện đọc", contentImage: "Microphone")
        case .total:
            return ContentInfo(contentTitle: "Tổng hợp", contentImage: "PlayCircle")
        }
    }
    
    var title: String { content.contentTitle }
    var image: String { content.contentImage}
}

class BaseViewController: UIViewController {
    
}
