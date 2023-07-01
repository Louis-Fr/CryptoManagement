//
//  Crypto.swift
//  CryptoManagement
//
//  Created by Louis REY on 01/07/2023.
//

import Foundation

enum Crypto: String, CaseIterable {
    case Bitcoin = "🅑"
    case ethereum = "🅔"
    case USDTS = "🅤"
    
    var cryptoIcon: String {
        switch self {
        case .Bitcoin:
            return "bitcoinsign.circle"
        case .ethereum:
            return "e.circle"
        case .USDTS:
            return "u.circle"
        }
    }
    
    var cryptoIconFill: String {
        return "\(cryptoIcon).fill"
    }
}
