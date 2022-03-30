//
//  ViewAssets.swift
//  cryptomarket
//
//  Created by 90305906 on 3/3/22.
//

import SwiftUI

struct ViewAssets: View {
    
    @ObservedObject var model = AssetModel()
    //@ObservedObject var model1 = GetCoinModel()
    @State var assets = GlobalVar.assets

    
    
    var body: some View {
        if assets.count > 0 {
        
        NavigationView {
            List(assets) { c in
               NavigationLink(destination: ViewAssetInfo(asset: c), label: {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(c.name)
                                .font(.title)
                            Text(c.symbol)
                        }
                        Spacer()
                        VStack {
                            
                            Text(String(Double(round(1000*c.amount)/1000)))
                            Text("$ \(String(c.amount_purchased))")
                            //Text(String(c.price_change_percentage_24h ?? 0) + "%")
                        }
                    }
                    
                })
            }.navigationTitle(Text("Assets"))
                .navigationBarTitleDisplayMode(.automatic)
                .onAppear { assets = GlobalVar.assets }
        }.navigationViewStyle(.stack)
        } else {
            Text("Buy Something")
                .onAppear { assets = GlobalVar.assets }
        }
    }
}

struct ViewAssets_Previews: PreviewProvider {
    static var previews: some View {
        ViewAssets()
    }
}

