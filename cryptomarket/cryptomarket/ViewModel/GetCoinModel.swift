//
//  GetCoinModel.swift
//  cryptomarket
//
//  Created by 90305906 on 3/3/22.
//
import Foundation

class GetCoinModel: ObservableObject {
    
    @Published var coins = [MyResult]()
    
    
    
    
    func getCoinModel() {

        let pathString = Bundle.main.path(forResource: "USDcoindata", ofType: "json")
        if let path = pathString {
        let url = URL(fileURLWithPath: path)
        //let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=1&page=1&sparkline=false&price_change_percentage=24h")!
        
        do {
            
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            
            do {
                let coinData = try decoder.decode([MyResult].self, from: data)
                
                for r in coinData {
                    r.id = UUID()
                }
                self.coins = coinData
            }
            catch {
                print(error)
            }
            
        }
        catch {
            print(error)
        }
    }
}
}


//                    var urlComponents = URLComponents(string: "https://api.coingecko.com/api/v3/coins/markets?")
//                    urlComponents?.queryItems = [
//                        URLQueryItem(name: "vs_currency", value: "usd"),
//                        URLQueryItem(name: "order", value: "market_cap_desc"),
//                        URLQueryItem(name: "per_page", value: "20"),
//                        URLQueryItem(name: "page", value: "1"),
//                        URLQueryItem(name: "sparkline", value: "false"),
//                        URLQueryItem(name: "price_change_percentage", value: "1h%2C24h%2C7d")
//                    ]
//                    let url = urlComponents?.url
//                    if let url = url {
