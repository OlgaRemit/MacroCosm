//
//  UIImageView+setDefaultLoadingInicator.swift
//  ClubhouseAvatarMaker
//
//  Created by Ольга Кадочникова on 30.03.21.
//

import SDWebImage
import UIKit

extension UIImageView {
    
    func setDefaultLoadingInicator() {
        sd_imageIndicator = SDWebImageActivityIndicator.gray
    }
}
