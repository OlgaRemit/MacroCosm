//
//  LoadingViewModelProtocol.swift
//  MacroCosm
//
//  Created by Ольга Кадочникова on 30.03.21.
//

protocol LoadingViewModelProtocol: class {
    
    var userInfo: UserInfo { get }
    
    func startConfiguration()
}
