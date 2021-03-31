//
//  ApplicationAssembly.swift
//  MacroCosm
//
//  Created by Ольга Кадочникова on 30.03.21.
//

import Foundation

class ApplicationAssembly {
    
    static var appRouter: AppRouter = {
        return MainAppRouter()
    }()
}
