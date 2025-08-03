//
//  LN000Contract.swift
//  ToraOffical
//
//  Created by Hung Vu on 16/5/25.
//

import Foundation

protocol LN000Contract {
    typealias View = _LN000View
    typealias Presenter = _LN000Presenter
    typealias Model = _LN000Model
}

protocol _LN000View: NSObjectProtocol {
    
}

protocol _LN000Model {
    var cells: [LN000Model.CellType] { get }
    func setupData()
}

protocol _LN000Presenter {
    var cells: [LN000Model.CellType] { get }
    func configData()
}
