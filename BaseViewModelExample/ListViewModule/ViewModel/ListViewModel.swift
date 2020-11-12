//
//  ListViewModel.swift
//  BaseViewModelExample
//
//  Created by Alexander Gerega on 11.11.2020.
//

import Foundation

class ListViewModel: BaseViewModel, ListViewModelType {
    
    func didSelect(at index: Int) {
        print(index)
    }
    
    func getList() {
        onLoading?(true)
        print("fetch list")
        onLoading?(false)
    }

}
