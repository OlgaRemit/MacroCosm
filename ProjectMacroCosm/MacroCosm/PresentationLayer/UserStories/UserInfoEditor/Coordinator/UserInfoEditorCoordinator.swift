//
//  UserInfoEditorCoordinator.swift
//  MacroCosm
//
//  Created by Ольга Кадочникова on 30.03.2021.
//

import UIKit

final class UserInfoEditorCoordinator: DefaultCoordinator {
    
    static func createModule(_ configuration: ((CustomizableUserInfoEditorViewModel) -> Void)? = nil) -> UIViewController {
        let view = UserInfoEditorViewController()
        let viewModel = UserInfoEditorViewModel()
        let coordinator = UserInfoEditorCoordinator()

        view.viewModel = viewModel
        view.coordinator = coordinator

        coordinator.transition = view

        if let configuration = configuration {
            configuration(viewModel)
        }

        return view
    }
}

// MARK: - Interface for view
extension UserInfoEditorCoordinator: UserInfoEditorCoordinatorProtocol {

}