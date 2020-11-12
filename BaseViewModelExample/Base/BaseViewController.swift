//
//  BaseViewController.swift
//  BaseViewModelExample
//
//  Created by Alexander Gerega on 11.11.2020.
//

import UIKit

class BaseViewController<ViewModel: BaseViewModelType>: UIViewController {
    var viewModel: ViewModel {
        didSet { didSetViewModel() }
    }
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
        super.init(nibName: String(describing: Self.self), bundle: Bundle(for: BaseViewController.self))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
    }
    
    func bindViewModel() {
        viewModel.onError = {
            print($0)
        }
        
        viewModel.onLoading = {
            $0 ? print("start animating") : print("stop animating")
        }
    }
    
    func didSetViewModel() {
        print("didSet")
    }
    
}
