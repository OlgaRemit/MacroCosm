//
//  GeneralViewController.swift
//  MacroCosm
//
//  Created by Ольга Кадочникова on 30.03.2021.
//

import UIKit

final class GeneralViewController: UIViewController {

    var viewModel: GeneralViewModelProtocol!
    var coordinator: GeneralCoordinatorProtocol!
    
    private var _view: GeneralView {
        return view as! GeneralView
    }

    override func loadView() {
        self.view = GeneralView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        configureSelf()
    }

    private func configureSelf() {
        
    }
}
