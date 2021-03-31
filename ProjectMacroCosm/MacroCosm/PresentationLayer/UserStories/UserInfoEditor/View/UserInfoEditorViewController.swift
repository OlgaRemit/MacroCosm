//
//  UserInfoEditorViewController.swift
//  MacroCosm
//
//  Created by Ольга Кадочникова on 30.03.2021.
//

import UIKit

final class UserInfoEditorViewController: UIViewController {

    var viewModel: UserInfoEditorViewModelProtocol!
    var coordinator: UserInfoEditorCoordinatorProtocol!
    
    private var _view: UserInfoEditorView {
        return view as! UserInfoEditorView
    }

    override func loadView() {
        self.view = UserInfoEditorView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        configureSelf()
    }

    private func configureSelf() {
        
    }
}
