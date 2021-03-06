//
//  SettingsViewModelProtocol.swift
//  MacroCosm
//
//  Created by Ольга Кадочникова on 30.03.2021.
//

import Foundation

protocol SettingsViewModelProtocol: class {
    
    var termsOfUsageUrl: URL? { get }
    var privacyPolicyUrl: URL? { get }
    var supportUrl: URL? { get }
    
    func rateApp()
}
