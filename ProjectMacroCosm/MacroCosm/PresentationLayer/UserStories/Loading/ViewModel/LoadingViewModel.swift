//
//  LoadingViewModel.swift
//  MacroCosm
//
//  Created by Ольга Кадочникова on 30.03.21.
//

final class LoadingViewModel {
	var output: LoadingOutput?
}

// MARK: - Configuration
extension LoadingViewModel: CustomizableLoadingViewModel {

}

// MARK: - Interface for view
extension LoadingViewModel: LoadingViewModelProtocol {
    
    func startConfiguration() {
        
    }
}

