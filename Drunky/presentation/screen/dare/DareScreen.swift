//
//  DareScreen.swift
//  Drunky
//
//  Created by Daniel Atitienei on 27.03.2025.
//

import SwiftUI
import RevenueCatUI
import RevenueCat

struct DareScreen: View {
    
    let gameMode: GameModeModel
    @State var dare: String = ""
    
    @State var currentPlayer = AppSession.shared.players[0]
    @State var currentPlayerIndex = 0
    
    @State var roundsLeft: Int = AppSession.shared.players.count * 15
    @AppStorage("hasPro") var hasPro: Bool = false
    @State var isPaywallVisible: Bool = false
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            if roundsLeft == 0 {
                GameFinishedView()
            } else {
                ZStack {
                    Text("\(currentPlayer)'s turn")
                        .font(.extraBold(size: 30))
                        .foregroundStyle(Color.neonPink)
                }
                .frame(maxHeight: .infinity, alignment: .top)
                
                Text(dare)
                    .font(.semiBold(size: 22))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                ZStack {
                    RoundedButton(onClick: nextTurn) {
                        Text("Next")
                            .font(.extraBold(size: 20))
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                    }
                }
                .frame(maxHeight: .infinity, alignment: .bottom)
            }
        }
        .onAppear {
            withAnimation {
                dare = gameMode.dares.randomElement() ?? ""
            }
        }
        .sheet(isPresented: $isPaywallVisible) {
            PaywallView(displayCloseButton: true)
        }
        .padding(.horizontal, 20)
        .padding(.vertical)
        .navigationBarBackButtonHidden()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.darkBlue)
        .onTapGesture(perform: nextTurn)
    }
    
    @ViewBuilder
    func GameFinishedView() -> some View {
        VStack {
            Text("You're not drunk?")
                .font(.extraBold(size: 30))
                .foregroundStyle(Color.neonPink)
                .multilineTextAlignment(.center)
            
            Text("Try another gamemode")
                .font(.bold(size: 20))
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
        }
        .onAppear {
            if !hasPro {
                isPaywallVisible = true
            }
        }
        
        ZStack {
            RoundedButton(
                onClick: {
                    dismiss()
                }
            ) {
                Text("Let's try")
                    .font(.extraBold(size: 20))
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
            }
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
    }
    
    func nextTurn() {
        withAnimation {
            if roundsLeft == 0 {
                return
            }
            
            if currentPlayerIndex == AppSession.shared.players.count - 1 {
                currentPlayerIndex = 0
                roundsLeft -= 1
            } else {
                currentPlayerIndex += 1
            }
            currentPlayer = AppSession.shared.players[currentPlayerIndex]
            
            dare = gameMode.dares.randomElement() ?? ""
        }
    }
}
