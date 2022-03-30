//
//  cryptomarketApp.swift
//  cryptomarket
//
//  Created by 90305906 on 2/23/22.
//

import SwiftUI

@main
struct cryptomarketApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UserSettings(currency: .USD, var1: 100, var2: true))
        }
    }
}
