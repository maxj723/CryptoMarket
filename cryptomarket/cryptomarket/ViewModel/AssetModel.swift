//
//  AssetModel.swift
//  cryptomarket
//
//  Created by 90305906 on 2/23/22.
//

import Foundation


class AssetModel: ObservableObject {
    
    
    @Published var assets = [Asset]()
    @Published var assetsGV = GlobalVar.assets
    
    
    
    
    //    init() {
    //        coins.append(Asset(name: "Bitcoin", price: 37691.30, symbol: "BTC", change: 0.76))
    //        coins.append(Asset(name: "Ethereum", price: 37691.30, symbol: "ETH", change: 0.76))
    //        coins.append(Asset(name: "Chainlink", price: 37691.30, symbol: "LINK", change: 0.76))
    //    }
    func purchase(name: String, price_purchased: Double, amount_purchased: Double, symbol: String, amount: Double) {
        
        var currentIndex = 0
        if assetsGV.count > 0 {
        for i in 0...assetsGV.count-1 {
            if assetsGV[i].name == name {
                self.assetsGV[currentIndex].amount += amount
                self.assetsGV[currentIndex].amount_purchased += amount_purchased
                break
            }
            currentIndex += 1
        }
        }
        assets.append(Asset(name: name, price_purchased: price_purchased, amount_purchased: amount_purchased, symbol: symbol, amount: amount))
    }
}







