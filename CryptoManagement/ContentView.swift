//
//  ContentView.swift
//  CryptoManagement
//
//  Created by Louis REY on 01/07/2023.
//

import SwiftUI

struct ContentView: View {
    
    // liste crypto
    var cryptoList = Crypto.allCases
    // crypto selectionné
    @State var cryptoSelected: Crypto = .Bitcoin
    // mode selection
    @State var cryptoModeSelected = false
    
    var body: some View {
        VStack {
            ForEach(cryptoList.indices) { index in
                Image(systemName: cryptoSelected.rawValue == cryptoList[index].rawValue ? cryptoList[index].cryptoIconFill : cryptoList[index].cryptoIcon)
                    .font(.system(size: 32))
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
