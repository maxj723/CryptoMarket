//
//  ViewCoinInfo.swift
//  cryptomarket
//
//  Created by 90305906 on 3/9/22.
//

import Foundation
import SwiftUI

struct ViewCoinInfo: View {
    
    var coin: MyResult
    
    
    var body: some View {
        VStack {
            HStack {
                Text(coin.name)
                    .font(.title)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Spacer()
                Text("$" + String(coin.current_price))
                    .font(.title2)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }
            HStack {
                Spacer()
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Spacer()
                        Text("Market Cap: $" + String(coin.market_cap ?? 0))
                        //Text("Market Cap Rank: " + String(coin.market_cap_rank ?? 0))
                        Text("Fully Diluted Valuation: $" + String(coin.fully_diluted_valuation ?? 0))
                        Text("Total Volume: $" + String(coin.total_volume ?? 0))
                        Text("High 24h: $" + String(coin.high_24h ?? 0))
                        Text("Low 24h: $" + String(coin.low_24h ?? 0))
                        Text("Price Change 24h: $" + String(coin.price_change_24h ?? 0))
                        Text("Price Change Percentage 24h: " + String(coin.price_change_percentage_24h ?? 0) + "%")
                        Text("Circulating Supply: " + String(coin.circulating_supply ?? 0))
                    }
                    VStack(alignment: .leading) {
                        Text("Total Supply: " + String(coin.total_supply ?? 0))
                        Text("Max Supply: $" + String(coin.max_supply ?? 0))
                        Text("Last Updated: " + coin.last_updated)
                        
                        Spacer()
                        
                        HStack {
                            Spacer()
                            NavigationLink(destination: BuyCoin(coin: coin), label: { Text("Buy")
                                    .padding(.horizontal, 20.0)
                                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                                    .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                            })
                            Spacer()
                            NavigationLink(destination: SellCoin(coin: coin), label: { Text("Sell")
                                    .padding(.horizontal, 20.0)
                                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                                    .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                            })
                            Spacer()
                        }
                    }
                    Spacer()
                }
            }
        }
        Spacer()
    }
}
