//
//  ViewSellCoin.swift
//  cryptomarket
//
//  Created by 90305906 on 3/9/22.
//

import Foundation
import SwiftUI

struct SellCoin: View {
    
    var coin: MyResult
    //var balance: Balance
    
   
    @State private var enteredValue : String = ""
    @State var status = ""
    @State var balanceLabel = GlobalVar.currentBalance
    
    var body: some View {
        
        
        
        VStack {
            Text(coin.name)
            HStack {
                TextField("Amount: $", text: $enteredValue)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .keyboardType(.numbersAndPunctuation)
                Button("Sell") {
                    //if Balance.currentBalance <= (Double(enteredValue) ?? 0) {
                        GlobalVar.currentBalance += (Double(enteredValue) ?? 0)
                        balanceLabel = GlobalVar.currentBalance
                        status = "success"
                        
                    //} else {
                        //status = "transaction failed"
                    //}
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
        }
            
    }
    
    func updateBalance() {
        balanceLabel = GlobalVar.currentBalance
    }
}
