//
//  TodayViewModel.swift
//  MacroCosm
//
//  Created by Ольга Кадочникова on 30.03.2021.
//

final class TodayViewModel {
	var output: TodayOutput?
    
    var horoscopeService: HoroscopeNetworkServiceProtocol!
    var userInfoStorage: UserInfoStorageServiceProtocol! {
        didSet {
            userInfoStorage.subscribe(self)
        }
    }
    
    var zodiacPredictionWillChange: (() -> Void)?
    var zodiacPredictionDidChanged: ((ZodiacPrediction) -> Void)?
}

// MARK: - Configuration
extension TodayViewModel: CustomizableTodayViewModel {

}

// MARK: - Interface for view
extension TodayViewModel: TodayViewModelProtocol {
    
    func loadData() {
        guard let zodiacId = userInfoStorage.userInfo.zodiacIndex
        else { return }
        
        zodiacPredictionWillChange?()
        
        horoscopeService.getDaylyPrediction(zodiacId: zodiacId) { [ weak self ] result in
            guard let self = self
            else { return }
            
            switch result {
            case .success(let data):
                self.zodiacPredictionDidChanged?(data)
            case .failure(let error):
                print(error)
            }
        }
    }
}

// MARK: - Interface for view
extension TodayViewModel: UserInfoStorageServiceSubscriber {
    
    func needToReloadBorders() {
        loadData()
    }
}

