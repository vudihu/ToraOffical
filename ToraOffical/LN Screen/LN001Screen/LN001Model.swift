//
//  LN001Model.swift
//  ToraOffical
//
//  Created by Hung Vu on 23/5/25.
//

import Foundation

final class LN001Model: LN001Contract.Model {
    enum CellType {
        case detail(content: ContentType)
        case empty(height: CGFloat)
    }
    
    var cells: [CellType] = []

    func setupData() {
        cells = ContentType.allCases.flatMap { course in
            return [
                .empty(height: 8),
                .detail(content: course)
            ]
        }
    }
}

