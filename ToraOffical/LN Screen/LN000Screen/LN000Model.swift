//
//  LN000Model.swift
//  ToraOffical
//
//  Created by Hung Vu on 16/5/25.
//

import Foundation

final class LN000Model: LN000Contract.Model {
    enum CellType {
        case content(type: CourseType)
        case empty(height: CGFloat)
    }
    var cells: [CellType] = []
    
    func setupData() {
        cells.append(.empty(height: 10))
        cells.append(.content(type: .n5Course))
        cells.append(.empty(height: 10))
        cells.append(.content(type: .n4Course))
        cells.append(.empty(height: 10))
        cells.append(.content(type: .n3Course))
        cells.append(.empty(height: 10))
        cells.append(.content(type: .n2Course))
        cells.append(.empty(height: 10))
        cells.append(.content(type: .n1Course))
    }
}
