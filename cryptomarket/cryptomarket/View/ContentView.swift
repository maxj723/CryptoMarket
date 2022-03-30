//
//  ContentView.swift
//  cryptomarket
//
//  Created by 90305906 on 2/23/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ViewPriceList()
                .tabItem() {
                    Image(systemName: "house.circle")
                    Text("Prices")
                }
            
            ViewAssets()
                .tabItem() {
                    Image(systemName: "bitcoinsign.circle")
                    Text("Assets")
                }
            
            ViewSettings()
                .tabItem() {
                    Image(systemName: "gear.circle")
                    Text("Settings")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
