//
//  Settings.swift
//  cryptomarket
//
//  Created by 90305906 on 3/7/22.
//

import Foundation

class UserSettings: ObservableObject {
    enum Currency: String {
        case USD
        case EUR
        case JPY
    }

    @Published var currency: Currency
    @Published var var1: Double
    @Published var var2: Bool

    init(currency: Currency, var1: Double, var2: Bool) {
        self.currency = currency
        self.var1 = var1
        self.var2 = var2
    }
}
