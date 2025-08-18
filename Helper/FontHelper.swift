//
//  FontHelper.swift
//  Notes App
//
//  Created by Karthikeyan Ramasamy on 18/08/25.
//

import Foundation
import SwiftUI

enum CustomFont {
    case regular(CGFloat)
    case bold(CGFloat)
    case light(CGFloat)
    case medium(CGFloat)
    case semiBold(CGFloat)
    
    var font: Font {
        switch self {
        case .regular(let size):
            return .custom("Poppins-Regular", size: size)
        case .bold(let size):
            return .custom("Poppins-Bold", size: size)
        case .light(let size):
            return .custom("Poppins-Light", size: size)
        case .medium(let size):
            return .custom("Poppins-Medium", size: size)
        case .semiBold(let size):
            return .custom("Poppins-SemiBold", size: size)
        }
    }
}
