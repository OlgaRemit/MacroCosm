//
//  LoadingViewController.swift
//  MacroCosm
//
//  Created by Ольга Кадочникова on 30.03.21.
//

import UIKit

final class LoadingViewController: UIViewController {
    
    var viewModel: LoadingViewModelProtocol!
    var coordinator: LoadingCoordinatorProtocol!
    
    private var _view: LoadingView {
        return view as! LoadingView
    }
    
    override func loadView() {
        self.view = LoadingView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureSelf()
    }
    
    private func configureSelf() {
        UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.clear],
                                                            for: .normal)
        UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.clear],
                                                            for: .highlighted)
        UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.clear],
                                                            for: .focused)
        
        viewModel.startConfiguration()
        
        _view.hideLogo()
        DispatchQueue.main.asyncAfter(deadline: .now() + _view.hideLogoDuration * 0.6) { [ weak self ] in
            self?.coordinator.showMainScreen()
        }
    }
}
