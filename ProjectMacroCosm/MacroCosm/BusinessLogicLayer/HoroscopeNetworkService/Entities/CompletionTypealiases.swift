//  CompletionTypealiases.swift
//  MacroCosm
//
//  Created by Ольга Кадочникова on 31.03.2021.
//

import Alamofire

typealias GetSettingsCompletion = (Result<GetDaylyPredictionRequestResult, NetworkServiceError>) -> Void
