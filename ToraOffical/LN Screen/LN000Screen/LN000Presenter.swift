//
//  LN000Presenter.swift
//  ToraOffical
//
//  Created by Hung Vu on 16/5/25.
//

import Foundation

final class LN000Presenter: LN000Contract.Presenter {    
    
    private var model: LN000Contract.Model
    required init(model: LN000Contract.Model) {
        self.model = model
    }
    
    var cells: [LN000Model.CellType] {
        model.cells
    }
    
    func configData() {
        model.setupData()
    }
}
