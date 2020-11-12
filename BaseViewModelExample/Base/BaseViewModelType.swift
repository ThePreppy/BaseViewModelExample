//
//  BaseViewModel.swift
//  BaseViewModelExample
//
//  Created by Alexander Gerega on 11.11.2020.
//

import Foundation

protocol BaseViewModelType: class {
    
    var onLoading: ((Bool) -> ())? { get set }
    var onError: ((String) -> ())? { get set }
}

class BaseViewModel: BaseViewModelType {
    var onLoading: ((Bool) -> ())?
    var onError: ((String) -> ())?
}
