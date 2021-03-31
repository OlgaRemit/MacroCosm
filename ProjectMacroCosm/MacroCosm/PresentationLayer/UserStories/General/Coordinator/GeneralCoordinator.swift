//
//  GeneralCoordinator.swift
//  MacroCosm
//
//  Created by Ольга Кадочникова on 30.03.2021.
//

import UIKit

final class GeneralCoordinator: DefaultCoordinator {
    
    static func createModule(_ configuration: ((CustomizableGeneralViewModel) -> Void)? = nil) -> UIViewController {
        let view = GeneralViewController()
        let viewModel = GeneralViewModel()
        let coordinator = GeneralCoordinator()

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
extension GeneralCoordinator: GeneralCoordinatorProtocol {

}
