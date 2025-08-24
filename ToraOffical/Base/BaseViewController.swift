//
//  BaseViewController.swift
//  ToraOffical
//
//  Created by Hung Vu on 24/8/25.
//

import UIKit

enum CourseType {
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

    var imageName: String {
        switch self {
        case .n1Course: return "fuji"
        case .n2Course: return "shushi"
        case .n3Course: return "noodle-icon"
        case .n4Course: return "flag-icon"
        case .n5Course: return "gate-icon"
        }
    }
    
    var backgroundColor: String {
        switch self {
        case .n1Course: return "#33A2C5"
        case .n2Course: return "#ECA451"
        case .n3Course: return "#83C579"
        case .n4Course: return "#9F7FD1"
        case .n5Course: return "#5389B9"
        }
    }
}

enum ListCourse {
    case kaiwa
    case word
    case grammar
    case listening
    case JLPT
    case course
    case chineseCharacters
    case reading
    case total
}

class BaseViewController: UIViewController {
    
}
