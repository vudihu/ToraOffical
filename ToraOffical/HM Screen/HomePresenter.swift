//
//  HomePresenter.swift
//  ToraOffical
//
//  Created by Hung Vu on 30/3/25.
//

import Foundation

final class HomePresenter: HomeContract.Presenter {
    
    private var model: HomeContract.Model
    required init(model: HomeContract.Model) {
        self.model = model
    }
    
    var cells: [HomeModel.CellType] {
        model.cells
    }
    
    func configData() {
        model.setupData()
    }
}
