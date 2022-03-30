//
//  BuyCoin.swift
//  cryptomarket
//
//  Created by 90305906 on 3/9/22.
//

import Foundation
import SwiftUI

struct BuyCoin: View {
    
    var coin: MyResult
    //var balance: Balance
    var assetModel = AssetModel()
   
    @State private var enteredValue : String = ""
    @State var status = ""
    @State var balanceLabel = GlobalVar.currentBalance
   // @State var eV = Double(enteredValue) ?? 0
    
    var body: some View {
        
       
        
        VStack {
            Text(coin.name)
            HStack {
                TextField("Amount: $", text: $enteredValue)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .keyboardType(.numbersAndPunctuation)
                
                Button("Buy") {
                    if GlobalVar.currentBalance >= (Double(enteredValue) ?? 0) {
                        GlobalVar.currentBalance -= (Double(enteredValue) ?? 0)
                        balanceLabel = GlobalVar.currentBalance
                        assetModel.purchase(name: coin.name, price_purchased: coin.current_price, amount_purchased: Double(enteredValue) ?? 0, symbol: coin.symbol, amount: (Double(enteredValue) ?? 0)/coin.current_price)
                        GlobalVar.assets.append(assetModel.assets[assetModel.assets.count-1])
                        
                        // for loops for testing purposes
                        for i in 0...assetModel.assets.count-1 {
                            print("asseet")
                            print(assetModel.assets[i])
                            
                        }
                        for j in 0...GlobalVar.assets.count-1 {
                            print("global")
                            print(GlobalVar.assets[j])
                        }
                        
                        
                        GlobalVar.tempAssets = assetModel.assets
                        status = "success"
                        
                        
                    } else {
                        status = "insufficient funds"
                    }
                }
                .padding(.horizontal, 20.0)
                .padding(.all)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                .onAppear(perform: self.updateBalance)
            }
            Spacer()
            HStack {
                Text(String(balanceLabel))
                Text(status)
            }
            Spacer()
        }.onAppear()
    }
    func updateBalance() {
        balanceLabel = GlobalVar.currentBalance
    }
}


