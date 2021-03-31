//
//  DataRequestExecutable.swift
//  ClubhouseAvatarMaker
//
//  Created by Ольга Кадочникова on 30.03.21.
//

import Alamofire

protocol DataRequestExecutable {
    
    var execute: DataRequest { get }
}

extension DataRequest: DataRequestExecutable {
    
    var execute: DataRequest {
        return self
    }
}
