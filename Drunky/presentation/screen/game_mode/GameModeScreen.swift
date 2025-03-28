//
//  GameModeScreen.swift
//  Drunky
//
//  Created by Daniel Atitienei on 27.03.2025.
//

import SwiftUI
import RevenueCatUI
import RevenueCat
import Combine

struct GameModeScreen: View {
    
    @StateObject var appSession = AppSession.shared
    
    @State var gameMode: GameModeModel? = nil
    @State var shouldNavigate: Bool = false
    
    @State var isPaywallVisible: Bool = false
    @AppStorage("hasPro") var hasPro: Bool = false
    
    @StateObject private var purchaseViewModel = PurchaseViewModel()
    
    var body: some View {
        ZStack {
            ZStack {
                Text("Game Modes")
                    .font(.extraBold(size: 30))
                    .foregroundStyle(Color.neonPink)
            }
            .frame(maxHeight: .infinity, alignment: .top)
            
            VStack(spacing: 10) {
                ForEach(Array(appSession.gameModes.enumerated()), id: \.offset) { _, gameMode in
                    GameModeCard(gameMode: gameMode)
                }
            }
        }
        .navigationDestination(isPresented: $shouldNavigate) {
            if let gameMode = gameMode {
                DareScreen(gameMode: gameMode)
            }
        }
        .sheet(isPresented: $isPaywallVisible) {
            PaywallView(displayCloseButton: true)
        }
        .padding(.horizontal, 40)
        .padding(.vertical)
        .navigationBarBackButtonHidden()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.darkBlue)
        .onChange(of: purchaseViewModel.isPurchased) {
            print("has subscription \(purchaseViewModel.isPurchased)")
            hasPro = purchaseViewModel.isPurchased
        }
    }
    
    @ViewBuilder
    func GameModeCard(gameMode: GameModeModel) -> some View {
        Button {
            if gameMode.requiresPremium {
                Purchases.shared.getCustomerInfo { (customerInfo, error) in
                    if customerInfo?.entitlements.active.keys.contains("pro") == false {
                        self.isPaywallVisible = true
                    } else {
                        self.hasPro = true
                        self.gameMode = gameMode
                        shouldNavigate = true
                    }
                }
            } else {
                self.gameMode = gameMode
                shouldNavigate = true
            }
        } label: {
            HStack(spacing: 20) {
                ZStack {
                    Text(gameMode.icon)
                        .font(.semiBold(size: 64))
                }
                .frame(width: 64, height: 64, alignment: .center)
                
                VStack(alignment: .leading) {
                    Text(gameMode.requiresPremium && !hasPro ? gameMode.title + " 🔒" : gameMode.title)
                        .font(.semiBold(size: 16))
                        .foregroundStyle(Color.white)
                    
                    Text(gameMode.subtitle)
                        .font(.semiBold(size: 11))
                        .foregroundStyle(Color.white)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .multilineTextAlignment(.leading)
            .padding(.bottom, 16)
        }
    }
}

#Preview {
    GameModeScreen()
}

class PurchaseViewModel: ObservableObject {
    @Published var isPurchased: Bool = false

    init() {
        // Start listening to customer info changes asynchronously
        Task {
            await listenToCustomerInfoUpdates()
        }
    }
    
    // Async function to listen to customer info updates
    private func listenToCustomerInfoUpdates() async {
        for await customerInfo in Purchases.shared.customerInfoStream {
            // Check if the user has the entitlement
            self.isPurchased = customerInfo.entitlements.active.keys.contains("pro")
        }
    }
}
