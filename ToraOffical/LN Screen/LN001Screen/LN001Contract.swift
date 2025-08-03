//
//  LN001Contract.swift
//  ToraOffical
//
//  Created by Hung Vu on 23/5/25.
//

import Foundation

protocol LN001Contract {
    typealias View = _LN001View
    typealias Presenter = _LN001Presenter
    typealias Model = _LN001Model
}

protocol _LN001View: NSObjectProtocol {
    
}

protocol _LN001Model {
    var cells: [LN001Model.CellType] { get }
    func setupData()
}

protocol _LN001Presenter {
    var cells: [LN001Model.CellType] { get }
    func configData()
}
