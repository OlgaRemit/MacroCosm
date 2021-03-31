//
//  CompletionTypealiasesDefault.swift
//  ClubhouseAvatarMaker
//
//  Created by Ольга Кадочникова on 30.03.21.
//

import Alamofire

typealias DefaultRequestCompletion<T: Codable> = (Result<T, NetworkServiceError>) -> Void
