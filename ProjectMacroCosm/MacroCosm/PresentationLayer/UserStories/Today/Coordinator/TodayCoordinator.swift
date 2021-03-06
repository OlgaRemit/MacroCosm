//
//  TodayCoordinator.swift
//  MacroCosm
//
//  Created by Ольга Кадочникова on 30.03.2021.
//

import UIKit

final class TodayCoordinator: DefaultCoordinator {
    
    static func createModule(_ configuration: ((CustomizableTodayViewModel) -> Void)? = nil) -> UIViewController {
        let view = TodayViewController()
        let viewModel = TodayViewModel()
        let coordinator = TodayCoordinator()

        view.viewModel = viewModel
        view.coordinator = coordinator

        coordinator.transition = view
        
        viewModel.horoscopeService = HoroscopeNetworkService.shared
        viewModel.userInfoStorage = UserInfoStorageService.shared

        if let configuration = configuration {
            configuration(viewModel)
        }

        return view
    }
}

// MARK: - Interface for view
extension TodayCoordinator: TodayCoordinatorProtocol {

}
