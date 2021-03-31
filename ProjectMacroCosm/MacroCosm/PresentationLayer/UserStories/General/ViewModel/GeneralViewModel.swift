//
//  GeneralViewModel.swift
//  MacroCosm
//
//  Created by Ольга Кадочникова on 30.03.2021.
//

final class GeneralViewModel {
	var output: GeneralOutput?
}

// MARK: - Configuration
extension GeneralViewModel: CustomizableGeneralViewModel {

}

// MARK: - Interface for view
extension GeneralViewModel: GeneralViewModelProtocol {

}

