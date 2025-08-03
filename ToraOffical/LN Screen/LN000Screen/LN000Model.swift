//
//  LN000Model.swift
//  ToraOffical
//
//  Created by Hung Vu on 16/5/25.
//

import Foundation

class LN000Model: LN000Contract.Model {
    enum CellType {
        case content(title: String, imageName: String, backgroundColor: String)
        case empty(height: CGFloat)
    }
    var cells: [CellType] = []
    
    func setupData() {
        cells.append(.empty(height: 10))
        cells.append(.content(title: "Khóa học N5", imageName: "fuji", backgroundColor: "#33A2C5"))
        cells.append(.empty(height: 10))
        cells.append(.content(title: "Khóa học N4", imageName: "shushi", backgroundColor: "#ECA451"))
        cells.append(.empty(height: 10))
        cells.append(.content(title: "Khóa học N3", imageName: "noodle-icon", backgroundColor: "#83C579"))
        cells.append(.empty(height: 10))
        cells.append(.content(title: "Khóa học N2", imageName: "flag-icon", backgroundColor: "#9F7FD1"))
        cells.append(.empty(height: 10))
        cells.append(.content(title: "Khóa học N1", imageName: "gate-icon", backgroundColor: "#5389B9"))
    }
}
