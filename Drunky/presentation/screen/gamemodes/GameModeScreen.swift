//
//  GameModeScreen.swift
//  Drunky
//
//  Created by Daniel Atitienei on 27.03.2025.
//

import SwiftUI

struct GameModeScreen: View {
    
    @StateObject var appSession = AppSession.shared
    
    @State var gameMode: GameModeModel? = nil
    @State var shouldNavigate: Bool = false
    
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
        .padding(.horizontal)
        .navigationBarBackButtonHidden()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.darkBlue)
    }
    
    @ViewBuilder
    func GameModeCard(gameMode: GameModeModel) -> some View {
        Button {
            self.gameMode = gameMode
            shouldNavigate = true
        } label: {
            HStack(spacing: 20) {
                ZStack {
                    Text(gameMode.icon)
                        .font(.semiBold(size: 64))
                }
                .frame(width: 64, height: 64, alignment: .center)
                
                VStack(alignment: .leading) {
                    Text(gameMode.title)
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
