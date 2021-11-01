//
//  PaymentMediums.swift
//  NISdk
//
//  Created by Johnny Peter on 27/08/19.
//  Copyright © 2019 Network International. All rights reserved.
//

import Foundation

 public enum PaymentMedium: String, RawRepresentable  {
    case ApplePay
    case Card
    
    public var rawVal: RawValue {
        switch self {
        case .ApplePay:
            return "ApplePay"
        case .Card:
            return "Card"
        }
    }
    
    public init?(rawVal: RawValue) {
        switch rawVal {
        case "ApplePay":
            self = .ApplePay
        case "Card":
            self = .Card
        default:
            self = .Card
        }
    }
}
