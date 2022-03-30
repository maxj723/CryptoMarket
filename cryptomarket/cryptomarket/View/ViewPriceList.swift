//
//  ViewPriceList.swift
//  cryptomarket
//
//  Created by 90305906 on 3/3/22.
//

import SwiftUI

struct ViewPriceList: View {
    
    @ObservedObject var model = GetCoinModel()
    @ObservedObject var assetModel = AssetModel()
    
    var body: some View {
        
        NavigationView {
            List(model.coins) { c in
                NavigationLink(destination: ViewCoinInfo(coin: c), label: {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(c.name)
                                .font(.title)
                            Text(c.symbol)
                        }
                        Spacer()
                        VStack {
                            Text("$" + String(c.current_price))
                            Text(String(c.price_change_percentage_24h ?? 0) + "%")
                        }
                    }
                    
                })
            }.navigationTitle(Text("Price List"))
                .navigationBarTitleDisplayMode(.automatic)
                .onAppear {
                    model.getCoinModel()
                }
        }.navigationViewStyle(.stack)
        
    }
}


struct ViewPriceList_Previews: PreviewProvider {
    static var previews: some View {
        ViewPriceList()
            .previewLayout(.sizeThatFits)
        
        
    }
}
