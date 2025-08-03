//
//  LN001Presenter.swift
//  ToraOffical
//
//  Created by Hung Vu on 23/5/25.
//

import Foundation

final class LN001Presenter: LN001Contract.Presenter {
    
    private var model: LN001Contract.Model
    required init(model: LN001Contract.Model) {
        self.model = model
    }
    var cells: [LN001Model.CellType] {
        model.cells
    }
    func configData() {
        model.setupData()
    }
}
