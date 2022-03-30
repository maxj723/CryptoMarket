//
//  ViewAssetInfo.swift
//  cryptomarket
//
//  Created by 90305906 on 3/11/22.
//

import SwiftUI

struct ViewAssetInfo: View {
    var asset: Asset
    
    
    var body: some View {
        Text(asset.name)
        
    }
}

//struct ViewAssetInfo_Previews: PreviewProvider {
//    static var previews: some View {
//        ViewAssetInfo()
//    }
//}
