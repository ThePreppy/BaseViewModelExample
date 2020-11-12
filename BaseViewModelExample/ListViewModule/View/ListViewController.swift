//
//  ListViewController.swift
//  BaseViewModelExample
//
//  Created by Alexander Gerega on 11.11.2020.
//

import UIKit

class ListViewController: BaseViewController<ListViewModel> {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didSetViewModel() {
        super.didSetViewModel()
    }
    
    @IBAction func switchDidChangeAction(_ sender: Any) {
        viewModel.getList()
    }
    
}
