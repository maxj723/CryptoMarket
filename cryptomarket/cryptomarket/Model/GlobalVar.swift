//
//  Balance.swift
//  cryptomarket
//
//  Created by 90305906 on 3/7/22.
//

import Foundation
import SwiftUI

struct GlobalVar {
    
    @ObservedObject var model = AssetModel()
    
    static var currentBalance = 1000.0
    static var currency = ""
    static var tempAssets = [Asset]()
    static var assets : [Asset] = []
   
    
//    func subtractBalance(amount: Double) {
//       // var status = ""
//        if amount >= currentBalance {
//            currentBalance -= amount
//            //status = "Success"
//        } else {
//           // status = "Insufficient Funds"
//        }
//    }
//
//    func addBalance(amount: Double) {
//        currentBalance += amount
//    }
    
}
