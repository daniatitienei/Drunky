//
//  ContentView.swift
//  Drunky
//
//  Created by Daniel Atitienei on 27.03.2025.
//

import SwiftUI
import RevenueCatUI
import RevenueCat

struct ContentView: View {
    
    @AppStorage("hasPro") var hasPro: Bool = false
    
    var body: some View {
        NavigationStack {
            PlayersScreen()
                .onAppear {
                    Purchases.shared.getCustomerInfo { (customerInfo, error) in
                        if customerInfo?.entitlements.active.keys.contains("pro") == false {
                            self.hasPro = false
                        } else {
                            self.hasPro = true
                        }
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
