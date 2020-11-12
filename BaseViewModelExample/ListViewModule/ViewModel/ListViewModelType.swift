//
//  ListViewModelType.swift
//  BaseViewModelExample
//
//  Created by Alexander Gerega on 11.11.2020.
//

import Foundation

protocol ListViewModelType: BaseViewModelType {
    func getList()
    func didSelect(at index: Int)
}
