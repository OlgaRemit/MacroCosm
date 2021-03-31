//  HoroscopeNetworkService.swift
//  MacroCosm
//
//  Created by Ольга Кадочникова on 31.03.2021.
//

import Alamofire

class HoroscopeNetworkService: NetworkService {
    
    static let shared: HoroscopeNetworkServiceProtocol = HoroscopeNetworkService()
    
    private let requestBuilder = HoroscopeRequestBuilder.self
}

extension HoroscopeNetworkService: HoroscopeNetworkServiceProtocol {
    
    func getDaylyPrediction(zodiacId: Int, completion: @escaping GetSettingsCompletion) {
        makeDefaultRequest(dataRequest: requestBuilder.daylyPrediction(zodiacId: zodiacId),
                           completion: completion)
    }
}
