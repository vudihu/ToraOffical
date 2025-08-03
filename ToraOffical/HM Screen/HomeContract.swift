//
//  HomeContract.swift
//  ToraOffical
//
//  Created by Hung Vu on 30/3/25.
//
import Foundation

protocol HomeContract {
    typealias View = _HomeView
    typealias Presenter = _HomePresenter
    typealias Model = _HomeModel
}

protocol _HomeView: NSObjectProtocol {
    
}

protocol _HomeModel {
    var cells: [HomeModel.CellType] { get }
    func setupData()
}

protocol _HomePresenter {
    var cells: [HomeModel.CellType] { get }
    func configData()
}
