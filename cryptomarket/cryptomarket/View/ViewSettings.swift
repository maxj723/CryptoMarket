//
//  ViewSettings.swift
//  cryptomarket
//
//  Created by 90305906 on 3/3/22.
//

import SwiftUI

struct ViewSettings: View {
    @EnvironmentObject private var userSettings: UserSettings
    
    @State var selectedCurrency = GlobalVar.currency
    
    var body: some View {
        VStack {
            Text("Current settings:")

            Text("Currency: \(userSettings.currency.rawValue)")

            Text("Var1: \(userSettings.var1)")

            Text("Var2: \(userSettings.var2 ? "yes" : "no")")

            Text("global currency test: \(GlobalVar.currency)")
            
            SomeChildView()
        }
    }
}

struct SomeChildView: View {
    @EnvironmentObject private var userSettings: UserSettings
    

    var body: some View {
        Picker("Currency", selection: $userSettings.currency) {
            Text("USD").tag(UserSettings.Currency.USD)
            Text("EUR").tag(UserSettings.Currency.EUR)
            Text("JPY").tag(UserSettings.Currency.JPY)
        }
        .pickerStyle(.segmented)
       // .onChange(of: $userSettings.currency, perform: self.updateCurrency())
    }
    func updateCurrency() {
        GlobalVar.currency = userSettings.currency.rawValue
    }
}

struct ViewSettings_Previews: PreviewProvider {
    static var previews: some View {
        ViewSettings()
            .environmentObject(UserSettings(currency: .USD, var1: 100, var2: true))
    }
}

