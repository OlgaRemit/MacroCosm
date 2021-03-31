//
//  UserInfoEditorViewModel.swift
//  MacroCosm
//
//  Created by Ольга Кадочникова on 30.03.2021.
//

final class UserInfoEditorViewModel {
	var output: UserInfoEditorOutput?
}

// MARK: - Configuration
extension UserInfoEditorViewModel: CustomizableUserInfoEditorViewModel {

}

// MARK: - Interface for view
extension UserInfoEditorViewModel: UserInfoEditorViewModelProtocol {

}

