//
//  CoinRowView.swift
//  cryptoApp
//
//  Created by Борух Соколов on 22.09.2023.
//

import SwiftUI

struct CoinRowView: View {
    let coin:CoinModel
    
    var body: some View {
        Text("\(coin.id)")
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        CoinRowView(coin: dev.coin)
    }
}
