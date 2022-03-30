//
//  Coin.swift
//  cryptomarket
//
//  Created by 90305906 on 2/23/22.
//

import Foundation
import SwiftUI

struct Asset: Identifiable {
    
    
    var id = UUID()
    var name: String
    var price_purchased: Double
    var amount_purchased: Double
    var symbol: String
    var amount : Double
    //var change_from_purchase: Double
}
