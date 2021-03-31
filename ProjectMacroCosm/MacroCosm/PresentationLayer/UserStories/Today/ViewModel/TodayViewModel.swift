//
//  TodayViewModel.swift
//  MacroCosm
//
//  Created by Ольга Кадочникова on 30.03.2021.
//

final class TodayViewModel {
	var output: TodayOutput?
    
    var horoscopeService: HoroscopeNetworkServiceProtocol!
}

// MARK: - Configuration
extension TodayViewModel: CustomizableTodayViewModel {

}

// MARK: - Interface for view
extension TodayViewModel: TodayViewModelProtocol {

    func getDaylyPrediction(completion: @escaping GetSettingsCompletion) {
        horoscopeService.getDaylyPrediction(zodiacId: 1, completion: completion)
    }
}

